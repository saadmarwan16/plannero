import 'package:flutter/material.dart';
import 'package:plannero/app/constants/custom_colors.dart';
import 'package:plannero/app/constants/custom_paddings.dart';

abstract class CategoriesColor {
  static Color color(int index) {
    return colors()[index];
  }

  static Color colorVariant(int index) {
    return colorsVariant()[index];
  }

  static List<Color> colors() {
    return <Color>[
      CustomColors.accent,
      CustomColors.accent2,
      CustomColors.accent3,
      CustomColors.accent4,
    ];
  }

  static List<Color> colorsVariant() {
    return <Color>[
      CustomColors.accentVariant,
      CustomColors.accent2Variant,
      CustomColors.accent3Variant,
      CustomColors.accent4Variant,
    ];
  }

  static List<Container> widgets() {
    List<Container> planWidgets = [];

    for (Color color in colors()) {
      planWidgets.add(
        Container(
          width: 50,
          height: 50,
          padding: CustomPaddings.all16,
          margin: CustomPaddings.all4,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(64.0),
          ),
        ),
      );
    }

    return planWidgets;
  }
}
