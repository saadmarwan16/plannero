import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/statistics_controller.dart';

import 'package:plannero/injection.dart';

class StatisticsView extends StatelessWidget {
  const StatisticsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<StatisticsController>(
      init: getIt<StatisticsController>(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('StatisticsView'),
            centerTitle: true,
          ),
          body: Center(
            child: Text(
              controller.count.value.toString(),
              style: const TextStyle(fontSize: 20),
            ),
          ),
        );
      },
    );
  }
}
