import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/terms_of_use_controller.dart';

class TermsOfUseView extends GetView<TermsOfUseController> {
  const TermsOfUseView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TermsOfUseView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'TermsOfUseView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
