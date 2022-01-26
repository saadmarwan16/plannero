import 'package:flutter/material.dart';

import 'package:get/get.dart';

class EditTaskView extends GetView {
  const EditTaskView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EditTaskView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'EditTaskView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
