import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plannero/app/constants/custom_icons.dart';
import 'package:plannero/app/constants/custom_paddings.dart';
import 'package:plannero/app/constants/custom_text_styles.dart';
import 'package:plannero/app/core/views/alternate_scaffold.dart';
import 'package:plannero/app/data/entities/categories_entities.dart';
import 'package:plannero/app/modules/categories/controllers/categories_controller.dart';
import 'package:plannero/app/modules/categories/widgets/categories_animated_widget.dart';
import 'package:plannero/app/routes/app_pages.dart';
import 'package:plannero/injection.dart';

import 'package:auto_animated/auto_animated.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlternateScaffold(
      child1: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: CustomPaddings.sym160,
            child: Text(
              'Welcome!',
              style: CustomTextStyles.darkHeadline3Text,
            ),
          ),
          const SizedBox(height: 4.0),
          Padding(
            padding: CustomPaddings.sym160,
            child: Text(
              'Boost your Productivity with Plannero!',
              style: CustomTextStyles.darkHeadline3Text,
            ),
          ),
          const SizedBox(height: 12.0),
        ],
      ),
      child2: GetX<CategoriesController>(
        init: getIt<CategoriesController>(),
        builder: (controller) {
          return controller.allCategories.fold(() => Container(), (allCategories) {
            return ListView(
              restorationId: 'home',
              padding: CustomPaddings.all16,
              children: <Widget>[
                Text(
                  'Task Categories',
                  style: Theme.of(context).textTheme.headline4,
                ),
                Padding(
                  padding: CustomPaddings.onlyTop16,
                  child: LiveGrid.options(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20.0,
                      crossAxisSpacing: 20.0,
                      childAspectRatio: 1.0,
                    ),
                    primary: false,
                    shrinkWrap: true,
                    itemCount: allCategories.length,
                    options: const LiveOptions(
                      showItemInterval: Duration.zero,
                      visibleFraction: 0.25,
                      reAnimateOnVisibility: true,
                    ),
                    itemBuilder: (context, index, animation) {
                      final CategoryView category = allCategories[index];
                      late final double categoryCompletenessRatio;
                      if (category.totalNumOfTasks == 0) {
                        categoryCompletenessRatio = 0;
                      } else {
                        categoryCompletenessRatio =
                            category.numOfCompletedTasks /
                                category.totalNumOfTasks;
                      }

                      return FadeTransition(
                        opacity: Tween<double>(
                          begin: 0.75,
                          end: 1,
                        ).animate(animation),
                        child: ProgressCategoryAnimatedWidget(
                          categoryCompletenessRatio: categoryCompletenessRatio,
                          category: category,
                          animation: animation,
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.toNamed(Routes.ADD_CATEGORIES),
        child: const Icon(CustomIcons.plus),
      ),
      pageName: 'Plannero',
    );
  }
}
