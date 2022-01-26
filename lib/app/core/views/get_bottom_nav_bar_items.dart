import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

List<PersistentBottomNavBarItem> getBottomNavBarItems(BuildContext context) {
  final theme = Theme.of(context);
  const RouteAndNavigatorSettings routeAndNavigatorSettings =
      RouteAndNavigatorSettings(
    initialRoute: '/',
  );

  return [
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.home_outlined,
        size: 26.0,
        semanticLabel: 'Home Icon',
      ),
      inactiveIcon: const Icon(
        Icons.home_outlined,
        size: 24.0,
        semanticLabel: 'Home Icon',
      ),
      title: 'Home',
      contentPadding: 0.0,
      activeColorPrimary: theme.colorScheme.primary,
      inactiveColorPrimary: theme.colorScheme.onBackground.withOpacity(0.6),
      routeAndNavigatorSettings: routeAndNavigatorSettings,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.schedule_outlined,
        size: 26.0,
        semanticLabel: 'Timer icon',
      ),
      inactiveIcon: const Icon(
        Icons.schedule_outlined,
        size: 24.0,
        semanticLabel: 'Timer icon',
      ),
      title: 'Timer',
      contentPadding: 0.0,
      activeColorPrimary: theme.colorScheme.primary,
      inactiveColorPrimary: theme.colorScheme.onBackground.withOpacity(0.6),
      routeAndNavigatorSettings: routeAndNavigatorSettings,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.bar_chart_outlined,
        size: 26.0,
        semanticLabel: 'Statistics icon',
      ),
      inactiveIcon: const Icon(
        Icons.bar_chart_outlined,
        size: 24.0,
        semanticLabel: 'Statistics icon',
      ),
      title: 'Statistics',
      contentPadding: 0.0,
      activeColorPrimary: theme.colorScheme.primary,
      inactiveColorPrimary: theme.colorScheme.onBackground.withOpacity(0.6),
      routeAndNavigatorSettings: routeAndNavigatorSettings,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(
        Icons.settings_outlined,
        size: 26.0,
        semanticLabel: 'Settings icon',
      ),
      inactiveIcon: const Icon(
        Icons.settings_outlined,
        size: 24.0,
        semanticLabel: 'Settings icon',
      ),
      title: 'Settings',
      contentPadding: 0.0,
      activeColorPrimary: theme.colorScheme.primary,
      inactiveColorPrimary: theme.colorScheme.onBackground.withOpacity(0.6),
      routeAndNavigatorSettings: routeAndNavigatorSettings,
    ),
  ];
}
