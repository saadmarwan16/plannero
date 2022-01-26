import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:plannero/app/constants/custom_paddings.dart';
import 'package:plannero/app/core/views/get_bottom_nav_bar_items.dart';
import 'package:plannero/app/core/views/get_pages.dart';
import 'package:plannero/app/utils/custom_dialogs.dart';

class PageNavigator extends StatelessWidget {
  static const id = '/page-navigator';
  const PageNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Get.theme;

    return PersistentTabView(
      context,
      onWillPop: (_) async {
        return CustomDialogs.closeApp();
      },
      controller: PersistentTabController(initialIndex: 0),
      screens: getViews(),
      items: getBottomNavBarItems(context),
      confineInSafeArea: true,
      backgroundColor: theme.scaffoldBackgroundColor,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      bottomScreenMargin: MediaQuery.of(context).viewInsets.bottom > 0
          ? 0.0
          : kBottomNavigationBarHeight,
      navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
          ? 0.0
          : kBottomNavigationBarHeight,
      hideNavigationBarWhenKeyboardShows: true,
      margin: CustomPaddings.zero,
      popActionScreens: PopActionScreensType.once,
      hideNavigationBar: false,
      decoration: NavBarDecoration(
        colorBehindNavBar: theme.backgroundColor,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: theme.colorScheme.onSurface.withOpacity(0.25),
            offset: const Offset(
              0,
              -0.125,
            ),
            blurRadius: 1.0,
            spreadRadius: 1.0,
          ),
        ],
      ),
      popAllScreensOnTapOfSelectedTab: false,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 250),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 300),
      ),
      navBarStyle: NavBarStyle.style6,
    );
  }
}
