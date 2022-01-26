import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plannero/app/constants/custom_icons.dart';
import 'package:plannero/app/constants/custom_paddings.dart';
import 'package:plannero/app/modules/categories/controllers/categories_controller.dart';
import 'package:plannero/app/utils/categories_color.dart';
import 'package:plannero/injection.dart';

class EditCategoryView extends StatelessWidget {
  const EditCategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<CategoriesController>(
      init: getIt<CategoriesController>(),
      initState: (state) => state.controller?.get(Get.arguments as int),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Edit Category'),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                icon: const Icon(CustomIcons.check),
                // onPressed: () {},
                onPressed: () => controller.edit(Get.arguments as int),
              )
            ],
          ),
          body: ListView(
            padding: CustomPaddings.all16,
            children: <Widget>[
              Padding(
                padding: CustomPaddings.onlyBottom16,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Category title',
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 6.0,
                    ),
                    TextFormField(
                      key: controller.editCategoryFormKey,
                      initialValue:  controller.category
                          .fold(() => null, (category) {
                            return category.name;
                          }),
                      cursorColor: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(0.6),
                      style: Theme.of(context).textTheme.bodyText2,
                      maxLength: 45,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: controller.validateCategoryName,
                      decoration: const InputDecoration(
                        hintText: 'Input title here ...',
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Choose category color',
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 6.0,
                  ),
                  Obx(
                    () => ToggleButtons(
                      fillColor: Colors.transparent,
                      borderColor: Colors.transparent,
                      selectedBorderColor: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(0.6),
                      onPressed: controller.updateEditCategoryColor,
                      isSelected: <bool>[
                        controller.editCategoryColor == 0,
                        controller.editCategoryColor == 1,
                        controller.editCategoryColor == 2,
                        controller.editCategoryColor == 3,
                      ],
                      children: CategoriesColor.widgets(),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
