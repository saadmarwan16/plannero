import 'package:get/get.dart';
import 'package:plannero/injection.dart';

import '../controllers/privacy_policy_controller.dart';

class PrivacyPolicyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PrivacyPolicyController>(
      () => getIt<PrivacyPolicyController>(),
    );
  }
}
