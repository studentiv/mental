// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import '../until/local_data.dart' as _i5;
import 'module_injector.dart' as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.factory<_i3.FirebaseAuth>(() => injectableModule.firebaseAuth);
  await gh.factoryAsync<_i4.SharedPreferences>(
      () => injectableModule.sharedPreferences,
      preResolve: true);
  gh.lazySingleton<_i5.LocalData>(
      () => _i5.LocalData(get<_i4.SharedPreferences>()));
  return get;
}

class _$InjectableModule extends _i6.InjectableModule {}
