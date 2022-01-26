import 'package:flutter/material.dart';

abstract class CustomPaddings {
  static const zero = EdgeInsets.zero;

  static const all4 = EdgeInsets.all(4.0);

  static const all8 = EdgeInsets.all(8.0);

  static const all12 = EdgeInsets.all(12.0);

  static const all16 = EdgeInsets.all(16.0);

  static const all24 = EdgeInsets.all(24.0);

  static const onlyTop6Right16Bottom24Left16 = EdgeInsets.only(
    top: 6.0,
    right: 16.0,
    bottom: 24.0,
    left: 16.0,
  );

  static const onlyTop0Right16Bottom6Left16 = EdgeInsets.only(
    top: 0.0,
    right: 16.0,
    bottom: 6.0,
    left: 16.0,
  );

  static const onlyTop4Bottom4Left8 = EdgeInsets.only(
    top: 4.0,
    bottom: 4.0,
    left: 8.0,
  );

  static const onlyTop16Bottom8 = EdgeInsets.only(
    top: 16.0,
    bottom: 8.0,
  );

  static const onlyTop36 = EdgeInsets.only(
    top: 36.0,
  );

  static const onlyTop16 = EdgeInsets.only(
    top: 16.0,
  );

  static const onlyTop24 = EdgeInsets.only(
    top: 24.0,
  );

  static const onlyTop8Right16Bottom8Left12 = EdgeInsets.only(
    top: 8.0,
    right: 16.0,
    bottom: 8.0,
    left: 12.0,
  );

  static const onlyBottom16 = EdgeInsets.only(bottom: 16.0);

  static const onlyRight4 = EdgeInsets.only(right: 4.0);

  static const onlyRight16 = EdgeInsets.only(right: 16.0);

  static const sym160 = EdgeInsets.symmetric(horizontal: 16.0);

  static const sym80 = EdgeInsets.symmetric(horizontal: 8.0);

  static const sym08 = EdgeInsets.symmetric(vertical: 8.0);

  static const sym012 = EdgeInsets.symmetric(vertical: 12.0);

  static const sym016 = EdgeInsets.symmetric(vertical: 16.0);

  static const sym024 = EdgeInsets.symmetric(vertical: 24.0);

  static const sym84 = EdgeInsets.symmetric(
    horizontal: 8.0,
    vertical: 4.0,
  );

  static const sym126 = EdgeInsets.symmetric(
    horizontal: 12.0,
    vertical: 6.0,
  );

  static const sym1624 = EdgeInsets.symmetric(
    horizontal: 16.0,
    vertical: 24.0,
  );

  static const sym168 = EdgeInsets.symmetric(
    horizontal: 16.0,
    vertical: 8.0,
  );

  static const sym164 = EdgeInsets.symmetric(
    horizontal: 16.0,
    vertical: 4.0,
  );

  static const sym1216 = EdgeInsets.symmetric(
    horizontal: 12.0,
    vertical: 16.0,
  );

  static const sym1612 = EdgeInsets.symmetric(
    horizontal: 16.0,
    vertical: 12.0,
  );

  static const sym2416 = EdgeInsets.symmetric(
    horizontal: 24.0,
    vertical: 16.0,
  );

  static const sym200 = EdgeInsets.symmetric(
    horizontal: 20.0,
  );

  static const sym248 = EdgeInsets.symmetric(
    horizontal: 24.0,
    vertical: 8.0,
  );
}
