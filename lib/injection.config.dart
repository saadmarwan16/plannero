// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:objectbox/objectbox.dart' as _i8;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import 'app/core/injectable_modules/shared_preferences_injectable_module.dart'
    as _i16;
import 'app/core/injectable_modules/store_injectable_module.dart' as _i17;
import 'app/data/local_data_sources/categories_local_data_source.dart' as _i10;
import 'app/data/local_data_sources/home_local_data_source.dart' as _i12;
import 'app/data/repositories/categories_repository.dart' as _i11;
import 'app/data/repositories/home_repository.dart' as _i13;
import 'app/modules/categories/controllers/categories_controller.dart' as _i15;
import 'app/modules/digital_timer/controllers/digital_timer_controller.dart'
    as _i3;
import 'app/modules/help/controllers/help_controller.dart' as _i4;
import 'app/modules/privacy_policy/controllers/privacy_policy_controller.dart'
    as _i5;
import 'app/modules/settings/controllers/settings_controller.dart' as _i14;
import 'app/modules/statistics/controllers/statistics_controller.dart' as _i7;
import 'app/modules/terms_of_use/controllers/terms_of_use_controller.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final sharedPreferencesInjectableModule =
      _$SharedPreferencesInjectableModule();
  final storeInjectableModule = _$StoreInjectableModule();
  gh.factory<_i3.DigitalTimerController>(() => _i3.DigitalTimerController());
  gh.factory<_i4.HelpController>(() => _i4.HelpController());
  gh.factory<_i5.PrivacyPolicyController>(() => _i5.PrivacyPolicyController());
  await gh.lazySingletonAsync<_i6.SharedPreferences>(
      () => sharedPreferencesInjectableModule.prefs,
      preResolve: true);
  gh.factory<_i7.StatisticsController>(() => _i7.StatisticsController());
  await gh.lazySingletonAsync<_i8.Store>(() => storeInjectableModule.store,
      preResolve: true);
  gh.factory<_i9.TermsOfUseController>(() => _i9.TermsOfUseController());
  gh.lazySingleton<_i10.ICategoriesLocalDataSource>(
      () => _i10.CategoriesLocalDataSource(store: get<_i8.Store>()));
  gh.lazySingleton<_i11.ICategoriesRepository>(() => _i11.CategoriesRepository(
      categoriesLocalDataSource: get<_i10.ICategoriesLocalDataSource>()));
  gh.lazySingleton<_i12.IHomeLocalDataSource>(
      () => _i12.HomeLocalDataSource(store: get<_i8.Store>()));
  gh.lazySingleton<_i13.IHomeRepository>(() => _i13.HomeRepository(
      homeLocalDataSource: get<_i12.IHomeLocalDataSource>()));
  gh.factory<_i14.SettingsController>(
      () => _i14.SettingsController(get<_i6.SharedPreferences>()));
  gh.factory<_i15.CategoriesController>(
      () => _i15.CategoriesController(get<_i11.ICategoriesRepository>()));
  return get;
}

class _$SharedPreferencesInjectableModule
    extends _i16.SharedPreferencesInjectableModule {}

class _$StoreInjectableModule extends _i17.StoreInjectableModule {}
