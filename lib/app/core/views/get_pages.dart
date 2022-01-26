import 'package:flutter/material.dart';
import 'package:plannero/app/modules/categories/views/home_view.dart';
import 'package:plannero/app/modules/digital_timer/views/digital_timer_view.dart';
import 'package:plannero/app/modules/settings/views/settings_view.dart';
import 'package:plannero/app/modules/statistics/views/statistics_view.dart';

List<Widget> getViews() {
  return [
    const HomeView(),
    const DigitalTimerView(),
    const StatisticsView(),
    const SettingsView(),
  ];
}
