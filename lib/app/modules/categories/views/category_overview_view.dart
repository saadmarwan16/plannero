import 'package:auto_animated/auto_animated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:get/get.dart';
import 'package:plannero/app/constants/custom_colors.dart';
import 'package:plannero/app/constants/custom_icons.dart';
import 'package:plannero/app/constants/custom_paddings.dart';
import 'package:plannero/app/data/entities/task_entities.dart';
import 'package:plannero/app/modules/categories/controllers/categories_controller.dart';
import 'package:plannero/app/routes/app_pages.dart';
import 'package:plannero/app/utils/categories_color.dart';
import 'package:plannero/app/utils/custom_dialogs.dart';
import 'package:plannero/injection.dart';

class CategoryOverviewView extends StatelessWidget {
  const CategoryOverviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<CategoriesController>(
      init: getIt<CategoriesController>(),
      initState: (state) {
        state.controller?.get(Get.arguments as int);
      },
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            actions: <Widget>[
              IconButton(
                  onPressed: () => Get.toNamed(Routes.EDIT_CATEGORIES,
                      arguments: Get.arguments as int),
                  icon: const Icon(CustomIcons.edit)),
              IconButton(
                onPressed: () => CustomDialogs.deleteCategory(
                    controller, Get.arguments as int),
                icon: const Icon(CustomIcons.delete),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => Get.toNamed(Routes.ADD_TASK),
            child: const Icon(CustomIcons.plus),
          ),
          body: controller.category.fold(
            () {
              return Container();
            },
            (category) {
              return ListView(
                padding: CustomPaddings.all16,
                children: <Widget>[
                  Icon(
                    CustomIcons.book,
                    color: CategoriesColor.color(category.color),
                    size: 96.0,
                  ),
                  Padding(
                    padding: CustomPaddings.all16,
                    child: Text(
                      category.name,
                      style: Theme.of(context).textTheme.headline3,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  LiveList.options(
                    primary: false,
                    shrinkWrap: true,
                    options: const LiveOptions(
                      showItemInterval: Duration.zero,
                      visibleFraction: 0.05,
                      reAnimateOnVisibility: true,
                    ),
                    itemCount: category.tasks.length,
                    itemBuilder: (context, index, animation) {
                      final Task task = category.tasks[index];

                      return FadeTransition(
                        opacity: Tween<double>(
                          begin: 0,
                          end: 1,
                        ).animate(animation),
                        child: SlideTransition(
                          position: Tween<Offset>(
                            begin: const Offset(0, -0.15),
                            end: Offset.zero,
                          ).animate(animation),
                          child: Padding(
                            padding: CustomPaddings.sym08,
                            child: Builder(builder: (context) {
                              return Slidable(
                                  startActionPane: ActionPane(
                                    motion: const StretchMotion(),
                                    dismissible:
                                        DismissiblePane(onDismissed: () {}),
                                    children: [
                                      Builder(builder: (context) {
                                        return SlidableAction(
                                          onPressed: (context) {
                                            final slidable =
                                                Slidable.of(context);
                                            slidable?.dismiss(
                                              ResizeRequest(
                                                const Duration(microseconds: 300),
                                                () {},
                                              ),
                                            );
                                          },
                                          label: 'Delete',
                                          backgroundColor: CustomColors.accent,
                                          foregroundColor: CustomColors.light,
                                          icon: CustomIcons.delete,
                                        );
                                      }),
                                      SlidableAction(
                                        onPressed: (context) {},
                                        label: 'Turn off',
                                        backgroundColor: CustomColors.accent2,
                                        foregroundColor: CustomColors.light,
                                        icon: CustomIcons.notification_off,
                                      ),
                                      SlidableAction(
                                        onPressed: (context) {},
                                        label:
                                            task.isFavorite ? 'Remove' : 'Add',
                                        backgroundColor: CustomColors.accent3,
                                        foregroundColor: CustomColors.light,
                                        icon: task.isFavorite
                                            ? Icons.star_border_outlined
                                            : Icons.star,
                                      ),
                                    ],
                                  ),
                                  child: Builder(builder: (context) {
                                    return Container(
                                      decoration: BoxDecoration(
                                        // color: theme.backgroundColorVariant,
                                        borderRadius: BorderRadius.circular(
                                          8.0,
                                        ),
                                      ),
                                      child: ListTile(
                                        contentPadding: CustomPaddings.onlyRight4,
                                        onTap: () {
                                          Get.toNamed(Routes.EDIT_TASK);
                                          // final slidable = Slidable.of(context);
                                          // slidable?.isDismissibleReady
                                          // final isSlide =
                                          //     slidable?.renderingMode ==
                                          //         SlidableRenderingMode.slide;

                                          // if (isSlide) {
                                          //   slidable?.close();
                                          // } else {
                                          //   Get.toNamed(Routes.EDIT_TASK);
                                          // }
                                        },
                                        leading: Checkbox(
                                          value: task.isChecked,
                                          onChanged: (value) {
                                            
                                          },
                                        ),
                                        title: Text(
                                          task.title,
                                          style: Theme.of(context).textTheme.headline4?.copyWith(
                                             decorationThickness: 2.0,
                                            decoration: task.isChecked
                                                ? TextDecoration.lineThrough
                                                : null,
                                          ),
                                        ),
                                        subtitle: Text(
                                          task.description,
                                          style: Theme.of(context).textTheme.caption?.copyWith(
                                            decorationThickness: 1.0,
                                            decoration: task.isChecked
                                                ? TextDecoration.lineThrough
                                                : null,
                                          ),
                                        ),
                                        trailing: const Icon(
                                          Icons.arrow_forward_ios,
                                        ),
                                      ),
                                    );
                                  }));
                            }),
                          ),
                        ),
                      );
                    },
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
