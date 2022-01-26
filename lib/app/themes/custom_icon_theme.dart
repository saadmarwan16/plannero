import 'package:flutter/cupertino.dart';
import 'package:plannero/app/constants/custom_colors.dart';

abstract class CustomIconTheme {
  static IconThemeData get icon {
    return const IconThemeData(
      color: CustomColors.light,
      size: 28.0,
    );
  }
}
