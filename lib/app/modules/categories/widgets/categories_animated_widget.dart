import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plannero/app/constants/custom_paddings.dart';
import 'package:plannero/app/constants/custom_text_styles.dart';
import 'package:plannero/app/data/entities/categories_entities.dart';
import 'package:plannero/app/routes/app_pages.dart';
import 'package:plannero/app/utils/categories_color.dart';

class ProgressCategoryAnimatedWidget extends AnimatedWidget {
  const ProgressCategoryAnimatedWidget({
    Key? key,
    required this.categoryCompletenessRatio,
    required this.category,
    required this.animation,
  }) : super(key: key, listenable: animation);

  final double categoryCompletenessRatio;
  final CategoryView category;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Column(
        children: <Widget>[
          Container(
            padding: CustomPaddings.onlyBottom16,
            width: 84,
            height: 100,
            child: Stack(
              fit: StackFit.expand,
              children: <Widget>[
                CircularProgressIndicator(
                  value:
                      (categoryCompletenessRatio * animation.value).toDouble(),
                  valueColor: AlwaysStoppedAnimation(
                    CategoriesColor.colorVariant(
                      category.color,
                    ),
                  ),
                  backgroundColor: CategoriesColor.color(
                    category.color,
                  ),
                  strokeWidth: 8.0,
                ),
                Center(
                  child: Text(
                    '${(categoryCompletenessRatio * animation.value * 100).toInt()}%',
                    style: CustomTextStyles.headline4Text.copyWith(
                      color: CategoriesColor.colorVariant(
                        category.color,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            category.name,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
        padding: CustomPaddings.sym1216,
        primary: Theme.of(context).colorScheme.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
      onPressed: () => Get.toNamed(
        Routes.CATEGORIES_OVERVIEW,
        arguments: category.id,
      ),
    );
  }
}
