import 'package:flutter/material.dart';
import 'package:plannero/app/constants/custom_colors.dart';

class AlternateScaffoldCustomAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final String pageName;
  const AlternateScaffoldCustomAppBar({
    Key? key,
    required this.pageName,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(56.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        pageName,
        // style: kHeadline2Text.copyWith(color: kLightColor),
      ),
      centerTitle: true,
      elevation: 0.0,
      backgroundColor: CustomColors.primary,
    );
  }
}
