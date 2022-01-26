import 'dart:io';

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:injectable/injectable.dart';
import 'package:plannero/app/data/entities/categories_entities.dart';
import 'package:plannero/app/data/repositories/categories_repository.dart';

import 'package:plannero/app/routes/app_pages.dart';
import 'package:plannero/app/utils/custom_dialogs.dart';
import 'package:plannero/app/utils/custom_messages.dart';

@injectable
class CategoriesController extends GetxController {
  final ICategoriesRepository _categoriesRepository;
  CategoriesController(this._categoriesRepository);

  final _allCategories = none<List<CategoryView>>().obs;
  Option<List<CategoryView>> get allCategories => _allCategories.value;

  final _category = none<CategoryView>().obs;
  Option<CategoryView> get category => _category.value;

  final _categoryColor = 0.obs;
  int get categoryColor => _categoryColor.value;

  final _editCategoryColor = 0.obs;
  int get editCategoryColor => _editCategoryColor.value;

  late final GlobalKey<FormFieldState> addCategoryFormKey;
  late final GlobalKey<FormFieldState> editCategoryFormKey;
  late final TextEditingController addCategoryTitleController;
  late final TextEditingController editCategoryTitleController;

  @override
  void onInit() {
    super.onInit();

    addCategoryFormKey = GlobalKey<FormFieldState>();
    editCategoryFormKey = GlobalKey<FormFieldState>();
    addCategoryTitleController = TextEditingController();
    editCategoryTitleController = TextEditingController();

    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        CustomDialogs.permission();
      }
    });

    AwesomeNotifications().createdStream.listen((notification) {
      CustomMessages.toast('Success', 'Notification created successfully');
    });

    AwesomeNotifications().actionStream.listen((notification) {
      if (Platform.isIOS) {
        AwesomeNotifications().getGlobalBadgeCounter().then((value) {
          AwesomeNotifications().setGlobalBadgeCounter(value - 1);
        });
      }

      Get.offAllNamed(Routes.CATEGORIES);
    });
  }

  @override
  void onReady() {
    super.onReady();
    _categoriesRepository.getAll().fold(
        (failure) => _allCategories.value = none(),
        (results) => _allCategories.value = some(results));
  }

  String? validateCategoryName(String? name) {
    if (name == null || name.isNotEmpty) {
      return null;
    }

    return 'Title cannot be empty';
  }

  void updateCategoryColor(int value) {
    _categoryColor.value = value;
  }

  void updateEditCategoryColor(int value) {
    _editCategoryColor.value = value;
  }

  String? categoryName() {
    return _category.value.fold(() => null, (category) => category.name);
  }

  void get(int id) {
    _categoriesRepository.get(id).fold(
      (failure) => _category.value = none(),
      (results) {
        _category.value = some(results);
        _editCategoryColor.value = results.color;
      },
    );
  }

  void delete(int id) {
    _categoriesRepository
        .delete(id)
        .fold((failure) => _allCategories.value = none(), (results) {
      _allCategories.value = some(results);
      Get.back();
      Get.back();
    });
  }

  void edit(int id) {
    final isFormValid = editCategoryFormKey.currentState?.validate();
    final String? title = editCategoryFormKey.currentState?.value;
    if (isFormValid == null || !isFormValid) {
      return;
    }

    if (title == null) {
      Get.back();
    }

    _categoriesRepository
        .edit(Category(id: id, name: title!, color: editCategoryColor))
        .fold(
          (failure) => _allCategories.value = none(),
          (results) {
             _allCategories.value = some(results);
             Get.back();
          },
        );
  }

  void add() {
    final isFormValid = addCategoryFormKey.currentState?.validate();
    if (isFormValid == null || !isFormValid) {
      return;
    }

    _categoriesRepository
        .add(Category(
      name: addCategoryTitleController.text,
      color: categoryColor,
    ))
        .fold(
      (failure) => _allCategories.value = none(),
      (results) {
        _allCategories.value = some(results);
        addCategoryTitleController.clear();
        _categoryColor.value = 0;
        Get.back();
      },
    );
  }

  @override
  void onClose() {
    AwesomeNotifications().actionSink.close();
    AwesomeNotifications().createdSink.close();
    addCategoryTitleController.dispose();
    editCategoryTitleController.dispose();
  }
}
