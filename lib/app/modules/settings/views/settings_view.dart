import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plannero/app/constants/custom_paddings.dart';
import 'package:plannero/app/modules/settings/controllers/settings_controller.dart';
import 'package:plannero/app/routes/app_pages.dart';
import 'package:plannero/app/utils/custom_dialogs.dart';
import 'package:plannero/generated/locales.g.dart';
import 'package:plannero/injection.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetX<SettingsController>(
      init: getIt<SettingsController>(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(LocaleKeys.settings_page_settings.tr),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            restorationId: 'settings',
            padding: CustomPaddings.sym1612,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(),
                const SizedBox(height: 32.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      controller.language,
                    ),
                    Text(
                      LocaleKeys.settings_page_user_preferences.tr,
                    ),
                    const SizedBox(height: 8.0),
                    ListTile(
                      leading: const Icon(
                        Icons.language_outlined,
                      ),
                      title: Text(LocaleKeys.settings_page_language.tr),
                      onTap: () => CustomDialogs.language(controller),
                    ),
                    ValueListenableBuilder(
                      valueListenable:
                          AdaptiveTheme.of(context).modeChangeNotifier,
                      builder: (_, mode, child) {
                        return ListTile(
                          leading: const Icon(
                            Icons.dark_mode_outlined,
                          ),
                          title: Text(LocaleKeys.settings_page_dark_mode.tr),
                          trailing: Switch.adaptive(
                            value:
                                mode == AdaptiveThemeMode.light ? false : true,
                            onChanged: (value) {
                              value
                                  ? AdaptiveTheme.of(context).setDark()
                                  : AdaptiveTheme.of(context).setLight();
                            },
                          ),
                          onTap: () {
                            mode == AdaptiveThemeMode.light
                                ? AdaptiveTheme.of(context).setDark()
                                : AdaptiveTheme.of(context).setLight();
                          },
                        );
                      },
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      LocaleKeys.settings_page_about_plannero.tr,
                    ),
                    const SizedBox(height: 8.0),
                    Column(
                      children: <Widget>[
                        ListTile(
                          title: Text(LocaleKeys.settings_page_help.tr),
                          trailing: const Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                          onTap: () => Get.toNamed(Routes.HELP),
                        ),
                        ListTile(
                          title: Text(LocaleKeys.settings_page_term_of_use.tr),
                          trailing: const Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                          onTap: () => Get.toNamed(Routes.TERMS_OF_USE),
                        ),
                        ListTile(
                          title:
                              Text(LocaleKeys.settings_page_privacy_policy.tr),
                          trailing: const Icon(
                            Icons.arrow_forward_ios_outlined,
                          ),
                          onTap: () => Get.toNamed(Routes.PRIVACY_POLICY),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 32.0),
                Container(
                  alignment: Alignment.center,
                  // padding: kPaddingOnlyTop16Bottom8,
                  child: const Text(
                    'Plannero v1.0.0',
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
