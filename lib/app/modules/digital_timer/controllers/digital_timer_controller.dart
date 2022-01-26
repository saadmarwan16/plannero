import 'package:get/get.dart';
import 'package:injectable/injectable.dart';

@injectable
class DigitalTimerController extends GetxController {
  final count = 0.obs;

  @override
  void onClose() {}
  void increment() => count.value++;
}
