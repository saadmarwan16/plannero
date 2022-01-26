import 'package:get/get.dart';
import 'package:plannero/app/modules/categories/views/add_category_view.dart';
import 'package:plannero/app/modules/categories/views/category_overview_view.dart';
import 'package:plannero/app/modules/categories/views/edit_category_view.dart';
import 'package:plannero/app/modules/tasks/views/add_task_view.dart';
import 'package:plannero/app/modules/tasks/views/edit_task_view.dart';

import '../modules/categories/bindings/categories_binding.dart';
import '../modules/categories/views/home_view.dart';
import '../modules/digital_timer/views/digital_timer_view.dart';
import '../modules/help/bindings/help_binding.dart';
import '../modules/help/views/help_view.dart';
import '../modules/privacy_policy/bindings/privacy_policy_binding.dart';
import '../modules/privacy_policy/views/privacy_policy_view.dart';
import '../modules/settings/views/settings_view.dart';
import '../modules/statistics/views/statistics_view.dart';
import '../modules/tasks/bindings/tasks_binding.dart';
import '../modules/terms_of_use/bindings/terms_of_use_binding.dart';
import '../modules/terms_of_use/views/terms_of_use_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.STATISTICS,
      page: () => const StatisticsView(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => const SettingsView(),
    ),
    GetPage(
      name: _Paths.DIGITAL_TIMER,
      page: () => const DigitalTimerView(),
    ),
    GetPage(
      name: _Paths.HELP,
      page: () => const HelpView(),
      binding: HelpBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: _Paths.TERMS_OF_USE,
      page: () => const TermsOfUseView(),
      binding: TermsOfUseBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: _Paths.PRIVACY_POLICY,
      page: () => const PrivacyPolicyView(),
      binding: PrivacyPolicyBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
    GetPage(
      name: _Paths.CATEGORIES,
      page: () => const HomeView(),
      binding: CategoriesBinding(),
    ),
    GetPage(
      name: _Paths.ADD_CATEGORIES,
      page: () => const AddCategoryView(),
      binding: CategoriesBinding(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: _Paths.EDIT_CATEGORIES,
      page: () => const EditCategoryView(),
      binding: CategoriesBinding(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: _Paths.CATEGORIES_OVERVIEW,
      page: () => const CategoryOverviewView(),
      binding: CategoriesBinding(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: _Paths.ADD_TASK,
      page: () => const AddTaskView(),
      binding: TasksBinding(),
      transition: Transition.zoom,
    ),
    GetPage(
      name: _Paths.EDIT_TASK,
      page: () => const EditTaskView(),
      binding: TasksBinding(),
      transition: Transition.rightToLeftWithFade,
    ),
  ];
}
