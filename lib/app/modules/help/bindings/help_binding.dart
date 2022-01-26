import 'package:get/get.dart';
import 'package:plannero/injection.dart';

import '../controllers/help_controller.dart';

class HelpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HelpController>(
      () => getIt<HelpController>(),
    );
  }
}
