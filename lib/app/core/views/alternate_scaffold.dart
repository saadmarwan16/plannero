import 'package:flutter/material.dart';

import 'package:plannero/app/constants/custom_colors.dart';
import 'package:plannero/app/core/views/alternate_scaffold_custom_app_bar.dart';

class AlternateScaffold extends StatelessWidget {
  final Widget child1;
  final Widget child2;
  final Widget? floatingActionButton;
  final String pageName;

  const AlternateScaffold({
    Key? key,
    required this.child1,
    required this.child2,
    this.floatingActionButton,
    required this.pageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AlternateScaffoldCustomAppBar(
        pageName: pageName,
      ),
      backgroundColor: CustomColors.primary,
      floatingActionButton: floatingActionButton,
      body: Column(
        children: <Widget>[
          child1,
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16.0),
                  topRight: Radius.circular(16.0),
                ),
              ),
              child: child2,
            ),
          ),
        ],
      ),
    );
  }
}
