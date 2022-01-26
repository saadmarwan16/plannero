import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plannero/app/constants/custom_icons.dart';
import 'package:plannero/app/constants/custom_paddings.dart';
import 'package:plannero/app/modules/categories/controllers/categories_controller.dart';
import 'package:plannero/app/utils/categories_color.dart';

class AddCategoryView extends GetView<CategoriesController> {
  const AddCategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Category'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: const Icon(CustomIcons.check),
            onPressed: controller.add,
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
                  key: controller.addCategoryFormKey,
                  controller: controller.addCategoryTitleController,
                  cursorColor:
                      Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
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
                  selectedBorderColor:
                      Theme.of(context).colorScheme.onSurface.withOpacity(0.6),
                  onPressed: controller.updateCategoryColor,
                  isSelected: <bool>[
                    controller.categoryColor == 0,
                    controller.categoryColor == 1,
                    controller.categoryColor == 2,
                    controller.categoryColor == 3,
                  ],
                  children: CategoriesColor.widgets(),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
