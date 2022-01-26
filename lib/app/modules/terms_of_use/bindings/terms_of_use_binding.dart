import 'package:get/get.dart';
import 'package:plannero/injection.dart';

import '../controllers/terms_of_use_controller.dart';

class TermsOfUseBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TermsOfUseController>(
      () => getIt<TermsOfUseController>(),
    );
  }
}
