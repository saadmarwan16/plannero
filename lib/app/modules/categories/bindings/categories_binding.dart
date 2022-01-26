import 'package:get/get.dart';
import 'package:plannero/injection.dart';

import '../controllers/categories_controller.dart';

class CategoriesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CategoriesController>(
      () => getIt<CategoriesController>(),
    );
  }
}
