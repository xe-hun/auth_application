// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auth_appication/application/auth_bloc.dart' as _i7;
import 'package:auth_appication/data/data_source/firebase_datasource.dart'
    as _i4;
import 'package:auth_appication/data/repository/auth_repository.dart' as _i6;
import 'package:auth_appication/domain/i_repository/i_auth_repository.dart'
    as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'module.dart' as _i8;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.singleton<_i3.FirebaseAuth>(registerModule.firebaseAuth);
  gh.lazySingleton<_i4.FireBaseDatasource>(
      () => _i4.FireBaseDatasourceImpl(gh<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i5.IAuthRepository>(() =>
      _i6.AuthRepository(firebaseDatasource: gh<_i4.FireBaseDatasource>()));
  gh.lazySingleton<_i7.AuthBloc>(() => _i7.AuthBloc(gh<_i5.IAuthRepository>()));
  return getIt;
}

class _$RegisterModule extends _i8.RegisterModule {}
