// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auth_appication/application/auth_bloc.dart' as _i9;
import 'package:auth_appication/data/data_source/firebase_datasource.dart'
    as _i6;
import 'package:auth_appication/data/data_source/send_email_otp.dart' as _i5;
import 'package:auth_appication/data/repository/auth_repository.dart' as _i8;
import 'package:auth_appication/domain/i_repository/i_auth_repository.dart'
    as _i7;
import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'module.dart' as _i10;

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
  gh.singleton<_i4.FirebaseFirestore>(registerModule.fireStore);
  gh.lazySingleton<_i5.SendEmailOtp>(() => _i5.SendEmailOtp());
  gh.lazySingleton<_i6.FireBaseDatasource>(() => _i6.FireBaseDatasourceImpl(
        gh<_i3.FirebaseAuth>(),
        gh<_i4.FirebaseFirestore>(),
      ));
  gh.lazySingleton<_i7.IAuthRepository>(() => _i8.AuthRepository(
        gh<_i6.FireBaseDatasource>(),
        gh<_i5.SendEmailOtp>(),
      ));
  gh.lazySingleton<_i9.AuthBloc>(() => _i9.AuthBloc(gh<_i7.IAuthRepository>()));
  return getIt;
}

class _$RegisterModule extends _i10.RegisterModule {}
