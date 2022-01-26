import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plannero/app/modules/digital_timer/controllers/digital_timer_controller.dart';
import 'package:plannero/app/routes/app_pages.dart';
import 'package:plannero/injection.dart';

class DigitalTimerView extends StatelessWidget {
  const DigitalTimerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<DigitalTimerController>(
      init: getIt<DigitalTimerController>(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(title: const Text('Digital Timer'), centerTitle: true,),
          body: Center(
            child: Column(
              children: <Widget>[
                Text(
                  controller.count.toString(),
                  style: const TextStyle(fontSize: 20),
                ),
                const SizedBox(height: 32.0),
                ElevatedButton(
                  onPressed: controller.increment,
                  child: const Text('Increment'),
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: () => Get.toNamed(Routes.SETTINGS),
                  child: const Text('Settings Page'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
