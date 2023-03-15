// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() sendOtp,
    required TResult Function() initializeOtpCountdown,
    required TResult Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)
        verifyOtp,
    required TResult Function(dynamic Function() onSuccessful) register,
    required TResult Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)
        login,
    required TResult Function(dynamic Function() onLogout) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? sendOtp,
    TResult? Function()? initializeOtpCountdown,
    TResult? Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)?
        verifyOtp,
    TResult? Function(dynamic Function() onSuccessful)? register,
    TResult? Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)?
        login,
    TResult? Function(dynamic Function() onLogout)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? sendOtp,
    TResult Function()? initializeOtpCountdown,
    TResult Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)?
        verifyOtp,
    TResult Function(dynamic Function() onSuccessful)? register,
    TResult Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)?
        login,
    TResult Function(dynamic Function() onLogout)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(InitializeOtpCountdown value)
        initializeOtpCountdown,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(InitializeOtpCountdown value)? initializeOtpCountdown,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(InitializeOtpCountdown value)? initializeOtpCountdown,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AuthEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() sendOtp,
    required TResult Function() initializeOtpCountdown,
    required TResult Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)
        verifyOtp,
    required TResult Function(dynamic Function() onSuccessful) register,
    required TResult Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)
        login,
    required TResult Function(dynamic Function() onLogout) logout,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? sendOtp,
    TResult? Function()? initializeOtpCountdown,
    TResult? Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)?
        verifyOtp,
    TResult? Function(dynamic Function() onSuccessful)? register,
    TResult? Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)?
        login,
    TResult? Function(dynamic Function() onLogout)? logout,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? sendOtp,
    TResult Function()? initializeOtpCountdown,
    TResult Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)?
        verifyOtp,
    TResult Function(dynamic Function() onSuccessful)? register,
    TResult Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)?
        login,
    TResult Function(dynamic Function() onLogout)? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(InitializeOtpCountdown value)
        initializeOtpCountdown,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(InitializeOtpCountdown value)? initializeOtpCountdown,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(InitializeOtpCountdown value)? initializeOtpCountdown,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AuthEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_SendOtpCopyWith<$Res> {
  factory _$$_SendOtpCopyWith(
          _$_SendOtp value, $Res Function(_$_SendOtp) then) =
      __$$_SendOtpCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SendOtpCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SendOtp>
    implements _$$_SendOtpCopyWith<$Res> {
  __$$_SendOtpCopyWithImpl(_$_SendOtp _value, $Res Function(_$_SendOtp) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SendOtp implements _SendOtp {
  const _$_SendOtp();

  @override
  String toString() {
    return 'AuthEvent.sendOtp()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SendOtp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() sendOtp,
    required TResult Function() initializeOtpCountdown,
    required TResult Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)
        verifyOtp,
    required TResult Function(dynamic Function() onSuccessful) register,
    required TResult Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)
        login,
    required TResult Function(dynamic Function() onLogout) logout,
  }) {
    return sendOtp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? sendOtp,
    TResult? Function()? initializeOtpCountdown,
    TResult? Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)?
        verifyOtp,
    TResult? Function(dynamic Function() onSuccessful)? register,
    TResult? Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)?
        login,
    TResult? Function(dynamic Function() onLogout)? logout,
  }) {
    return sendOtp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? sendOtp,
    TResult Function()? initializeOtpCountdown,
    TResult Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)?
        verifyOtp,
    TResult Function(dynamic Function() onSuccessful)? register,
    TResult Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)?
        login,
    TResult Function(dynamic Function() onLogout)? logout,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(InitializeOtpCountdown value)
        initializeOtpCountdown,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
  }) {
    return sendOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(InitializeOtpCountdown value)? initializeOtpCountdown,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
  }) {
    return sendOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(InitializeOtpCountdown value)? initializeOtpCountdown,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (sendOtp != null) {
      return sendOtp(this);
    }
    return orElse();
  }
}

abstract class _SendOtp implements AuthEvent {
  const factory _SendOtp() = _$_SendOtp;
}

/// @nodoc
abstract class _$$InitializeOtpCountdownCopyWith<$Res> {
  factory _$$InitializeOtpCountdownCopyWith(_$InitializeOtpCountdown value,
          $Res Function(_$InitializeOtpCountdown) then) =
      __$$InitializeOtpCountdownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeOtpCountdownCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$InitializeOtpCountdown>
    implements _$$InitializeOtpCountdownCopyWith<$Res> {
  __$$InitializeOtpCountdownCopyWithImpl(_$InitializeOtpCountdown _value,
      $Res Function(_$InitializeOtpCountdown) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeOtpCountdown implements InitializeOtpCountdown {
  const _$InitializeOtpCountdown();

  @override
  String toString() {
    return 'AuthEvent.initializeOtpCountdown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeOtpCountdown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() sendOtp,
    required TResult Function() initializeOtpCountdown,
    required TResult Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)
        verifyOtp,
    required TResult Function(dynamic Function() onSuccessful) register,
    required TResult Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)
        login,
    required TResult Function(dynamic Function() onLogout) logout,
  }) {
    return initializeOtpCountdown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? sendOtp,
    TResult? Function()? initializeOtpCountdown,
    TResult? Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)?
        verifyOtp,
    TResult? Function(dynamic Function() onSuccessful)? register,
    TResult? Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)?
        login,
    TResult? Function(dynamic Function() onLogout)? logout,
  }) {
    return initializeOtpCountdown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? sendOtp,
    TResult Function()? initializeOtpCountdown,
    TResult Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)?
        verifyOtp,
    TResult Function(dynamic Function() onSuccessful)? register,
    TResult Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)?
        login,
    TResult Function(dynamic Function() onLogout)? logout,
    required TResult orElse(),
  }) {
    if (initializeOtpCountdown != null) {
      return initializeOtpCountdown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(InitializeOtpCountdown value)
        initializeOtpCountdown,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
  }) {
    return initializeOtpCountdown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(InitializeOtpCountdown value)? initializeOtpCountdown,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
  }) {
    return initializeOtpCountdown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(InitializeOtpCountdown value)? initializeOtpCountdown,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (initializeOtpCountdown != null) {
      return initializeOtpCountdown(this);
    }
    return orElse();
  }
}

abstract class InitializeOtpCountdown implements AuthEvent {
  const factory InitializeOtpCountdown() = _$InitializeOtpCountdown;
}

/// @nodoc
abstract class _$$_VerifyOtpCopyWith<$Res> {
  factory _$$_VerifyOtpCopyWith(
          _$_VerifyOtp value, $Res Function(_$_VerifyOtp) then) =
      __$$_VerifyOtpCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String otp,
      dynamic Function() onVerifySuccess,
      dynamic Function() onVerifyFailure});
}

/// @nodoc
class __$$_VerifyOtpCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_VerifyOtp>
    implements _$$_VerifyOtpCopyWith<$Res> {
  __$$_VerifyOtpCopyWithImpl(
      _$_VerifyOtp _value, $Res Function(_$_VerifyOtp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? onVerifySuccess = null,
    Object? onVerifyFailure = null,
  }) {
    return _then(_$_VerifyOtp(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      onVerifySuccess: null == onVerifySuccess
          ? _value.onVerifySuccess
          : onVerifySuccess // ignore: cast_nullable_to_non_nullable
              as dynamic Function(),
      onVerifyFailure: null == onVerifyFailure
          ? _value.onVerifyFailure
          : onVerifyFailure // ignore: cast_nullable_to_non_nullable
              as dynamic Function(),
    ));
  }
}

/// @nodoc

class _$_VerifyOtp implements _VerifyOtp {
  const _$_VerifyOtp(
      {required this.otp,
      required this.onVerifySuccess,
      required this.onVerifyFailure});

  @override
  final String otp;
  @override
  final dynamic Function() onVerifySuccess;
  @override
  final dynamic Function() onVerifyFailure;

  @override
  String toString() {
    return 'AuthEvent.verifyOtp(otp: $otp, onVerifySuccess: $onVerifySuccess, onVerifyFailure: $onVerifyFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifyOtp &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.onVerifySuccess, onVerifySuccess) ||
                other.onVerifySuccess == onVerifySuccess) &&
            (identical(other.onVerifyFailure, onVerifyFailure) ||
                other.onVerifyFailure == onVerifyFailure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, otp, onVerifySuccess, onVerifyFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerifyOtpCopyWith<_$_VerifyOtp> get copyWith =>
      __$$_VerifyOtpCopyWithImpl<_$_VerifyOtp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() sendOtp,
    required TResult Function() initializeOtpCountdown,
    required TResult Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)
        verifyOtp,
    required TResult Function(dynamic Function() onSuccessful) register,
    required TResult Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)
        login,
    required TResult Function(dynamic Function() onLogout) logout,
  }) {
    return verifyOtp(otp, onVerifySuccess, onVerifyFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? sendOtp,
    TResult? Function()? initializeOtpCountdown,
    TResult? Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)?
        verifyOtp,
    TResult? Function(dynamic Function() onSuccessful)? register,
    TResult? Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)?
        login,
    TResult? Function(dynamic Function() onLogout)? logout,
  }) {
    return verifyOtp?.call(otp, onVerifySuccess, onVerifyFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? sendOtp,
    TResult Function()? initializeOtpCountdown,
    TResult Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)?
        verifyOtp,
    TResult Function(dynamic Function() onSuccessful)? register,
    TResult Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)?
        login,
    TResult Function(dynamic Function() onLogout)? logout,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(otp, onVerifySuccess, onVerifyFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(InitializeOtpCountdown value)
        initializeOtpCountdown,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
  }) {
    return verifyOtp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(InitializeOtpCountdown value)? initializeOtpCountdown,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
  }) {
    return verifyOtp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(InitializeOtpCountdown value)? initializeOtpCountdown,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (verifyOtp != null) {
      return verifyOtp(this);
    }
    return orElse();
  }
}

abstract class _VerifyOtp implements AuthEvent {
  const factory _VerifyOtp(
      {required final String otp,
      required final dynamic Function() onVerifySuccess,
      required final dynamic Function() onVerifyFailure}) = _$_VerifyOtp;

  String get otp;
  dynamic Function() get onVerifySuccess;
  dynamic Function() get onVerifyFailure;
  @JsonKey(ignore: true)
  _$$_VerifyOtpCopyWith<_$_VerifyOtp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisterCopyWith<$Res> {
  factory _$$_RegisterCopyWith(
          _$_Register value, $Res Function(_$_Register) then) =
      __$$_RegisterCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic Function() onSuccessful});
}

/// @nodoc
class __$$_RegisterCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Register>
    implements _$$_RegisterCopyWith<$Res> {
  __$$_RegisterCopyWithImpl(
      _$_Register _value, $Res Function(_$_Register) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onSuccessful = null,
  }) {
    return _then(_$_Register(
      onSuccessful: null == onSuccessful
          ? _value.onSuccessful
          : onSuccessful // ignore: cast_nullable_to_non_nullable
              as dynamic Function(),
    ));
  }
}

/// @nodoc

class _$_Register implements _Register {
  const _$_Register({required this.onSuccessful});

  @override
  final dynamic Function() onSuccessful;

  @override
  String toString() {
    return 'AuthEvent.register(onSuccessful: $onSuccessful)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Register &&
            (identical(other.onSuccessful, onSuccessful) ||
                other.onSuccessful == onSuccessful));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onSuccessful);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterCopyWith<_$_Register> get copyWith =>
      __$$_RegisterCopyWithImpl<_$_Register>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() sendOtp,
    required TResult Function() initializeOtpCountdown,
    required TResult Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)
        verifyOtp,
    required TResult Function(dynamic Function() onSuccessful) register,
    required TResult Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)
        login,
    required TResult Function(dynamic Function() onLogout) logout,
  }) {
    return register(onSuccessful);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? sendOtp,
    TResult? Function()? initializeOtpCountdown,
    TResult? Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)?
        verifyOtp,
    TResult? Function(dynamic Function() onSuccessful)? register,
    TResult? Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)?
        login,
    TResult? Function(dynamic Function() onLogout)? logout,
  }) {
    return register?.call(onSuccessful);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? sendOtp,
    TResult Function()? initializeOtpCountdown,
    TResult Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)?
        verifyOtp,
    TResult Function(dynamic Function() onSuccessful)? register,
    TResult Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)?
        login,
    TResult Function(dynamic Function() onLogout)? logout,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(onSuccessful);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(InitializeOtpCountdown value)
        initializeOtpCountdown,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(InitializeOtpCountdown value)? initializeOtpCountdown,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(InitializeOtpCountdown value)? initializeOtpCountdown,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthEvent {
  const factory _Register({required final dynamic Function() onSuccessful}) =
      _$_Register;

  dynamic Function() get onSuccessful;
  @JsonKey(ignore: true)
  _$$_RegisterCopyWith<_$_Register> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoginCopyWith<$Res> {
  factory _$$_LoginCopyWith(_$_Login value, $Res Function(_$_Login) then) =
      __$$_LoginCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {dynamic Function() onSuccessful, dynamic Function() onNotVerified});
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Login>
    implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onSuccessful = null,
    Object? onNotVerified = null,
  }) {
    return _then(_$_Login(
      onSuccessful: null == onSuccessful
          ? _value.onSuccessful
          : onSuccessful // ignore: cast_nullable_to_non_nullable
              as dynamic Function(),
      onNotVerified: null == onNotVerified
          ? _value.onNotVerified
          : onNotVerified // ignore: cast_nullable_to_non_nullable
              as dynamic Function(),
    ));
  }
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login({required this.onSuccessful, required this.onNotVerified});

  @override
  final dynamic Function() onSuccessful;
  @override
  final dynamic Function() onNotVerified;

  @override
  String toString() {
    return 'AuthEvent.login(onSuccessful: $onSuccessful, onNotVerified: $onNotVerified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Login &&
            (identical(other.onSuccessful, onSuccessful) ||
                other.onSuccessful == onSuccessful) &&
            (identical(other.onNotVerified, onNotVerified) ||
                other.onNotVerified == onNotVerified));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onSuccessful, onNotVerified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      __$$_LoginCopyWithImpl<_$_Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() sendOtp,
    required TResult Function() initializeOtpCountdown,
    required TResult Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)
        verifyOtp,
    required TResult Function(dynamic Function() onSuccessful) register,
    required TResult Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)
        login,
    required TResult Function(dynamic Function() onLogout) logout,
  }) {
    return login(onSuccessful, onNotVerified);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? sendOtp,
    TResult? Function()? initializeOtpCountdown,
    TResult? Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)?
        verifyOtp,
    TResult? Function(dynamic Function() onSuccessful)? register,
    TResult? Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)?
        login,
    TResult? Function(dynamic Function() onLogout)? logout,
  }) {
    return login?.call(onSuccessful, onNotVerified);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? sendOtp,
    TResult Function()? initializeOtpCountdown,
    TResult Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)?
        verifyOtp,
    TResult Function(dynamic Function() onSuccessful)? register,
    TResult Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)?
        login,
    TResult Function(dynamic Function() onLogout)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(onSuccessful, onNotVerified);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(InitializeOtpCountdown value)
        initializeOtpCountdown,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(InitializeOtpCountdown value)? initializeOtpCountdown,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(InitializeOtpCountdown value)? initializeOtpCountdown,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login(
      {required final dynamic Function() onSuccessful,
      required final dynamic Function() onNotVerified}) = _$_Login;

  dynamic Function() get onSuccessful;
  dynamic Function() get onNotVerified;
  @JsonKey(ignore: true)
  _$$_LoginCopyWith<_$_Login> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic Function() onLogout});
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onLogout = null,
  }) {
    return _then(_$_Logout(
      onLogout: null == onLogout
          ? _value.onLogout
          : onLogout // ignore: cast_nullable_to_non_nullable
              as dynamic Function(),
    ));
  }
}

/// @nodoc

class _$_Logout implements _Logout {
  const _$_Logout({required this.onLogout});

  @override
  final dynamic Function() onLogout;

  @override
  String toString() {
    return 'AuthEvent.logout(onLogout: $onLogout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Logout &&
            (identical(other.onLogout, onLogout) ||
                other.onLogout == onLogout));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onLogout);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LogoutCopyWith<_$_Logout> get copyWith =>
      __$$_LogoutCopyWithImpl<_$_Logout>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() sendOtp,
    required TResult Function() initializeOtpCountdown,
    required TResult Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)
        verifyOtp,
    required TResult Function(dynamic Function() onSuccessful) register,
    required TResult Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)
        login,
    required TResult Function(dynamic Function() onLogout) logout,
  }) {
    return logout(onLogout);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? sendOtp,
    TResult? Function()? initializeOtpCountdown,
    TResult? Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)?
        verifyOtp,
    TResult? Function(dynamic Function() onSuccessful)? register,
    TResult? Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)?
        login,
    TResult? Function(dynamic Function() onLogout)? logout,
  }) {
    return logout?.call(onLogout);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? sendOtp,
    TResult Function()? initializeOtpCountdown,
    TResult Function(String otp, dynamic Function() onVerifySuccess,
            dynamic Function() onVerifyFailure)?
        verifyOtp,
    TResult Function(dynamic Function() onSuccessful)? register,
    TResult Function(
            dynamic Function() onSuccessful, dynamic Function() onNotVerified)?
        login,
    TResult Function(dynamic Function() onLogout)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(onLogout);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendOtp value) sendOtp,
    required TResult Function(InitializeOtpCountdown value)
        initializeOtpCountdown,
    required TResult Function(_VerifyOtp value) verifyOtp,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
    required TResult Function(_Logout value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOtp value)? sendOtp,
    TResult? Function(InitializeOtpCountdown value)? initializeOtpCountdown,
    TResult? Function(_VerifyOtp value)? verifyOtp,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
    TResult? Function(_Logout value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOtp value)? sendOtp,
    TResult Function(InitializeOtpCountdown value)? initializeOtpCountdown,
    TResult Function(_VerifyOtp value)? verifyOtp,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    TResult Function(_Logout value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout({required final dynamic Function() onLogout}) =
      _$_Logout;

  dynamic Function() get onLogout;
  @JsonKey(ignore: true)
  _$$_LogoutCopyWith<_$_Logout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function(
            RegisterProperties registerProperties,
            LoginProperties loginProperties,
            bool loggedInButNotVerified,
            String? errorMessage,
            String? snackbarMessage,
            bool? isLoading)
        notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function(
            RegisterProperties registerProperties,
            LoginProperties loginProperties,
            bool loggedInButNotVerified,
            String? errorMessage,
            String? snackbarMessage,
            bool? isLoading)?
        notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function(
            RegisterProperties registerProperties,
            LoginProperties loginProperties,
            bool loggedInButNotVerified,
            String? errorMessage,
            String? snackbarMessage,
            bool? isLoading)?
        notAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_NotAuthenticated value) notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_NotAuthenticated value)? notAuthenticated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_NotAuthenticated value)? notAuthenticated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function(
            RegisterProperties registerProperties,
            LoginProperties loginProperties,
            bool loggedInButNotVerified,
            String? errorMessage,
            String? snackbarMessage,
            bool? isLoading)
        notAuthenticated,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function(
            RegisterProperties registerProperties,
            LoginProperties loginProperties,
            bool loggedInButNotVerified,
            String? errorMessage,
            String? snackbarMessage,
            bool? isLoading)?
        notAuthenticated,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function(
            RegisterProperties registerProperties,
            LoginProperties loginProperties,
            bool loggedInButNotVerified,
            String? errorMessage,
            String? snackbarMessage,
            bool? isLoading)?
        notAuthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_NotAuthenticated value) notAuthenticated,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_NotAuthenticated value)? notAuthenticated,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_NotAuthenticated value)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_AuthenticatedCopyWith<$Res> {
  factory _$$_AuthenticatedCopyWith(
          _$_Authenticated value, $Res Function(_$_Authenticated) then) =
      __$$_AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Authenticated>
    implements _$$_AuthenticatedCopyWith<$Res> {
  __$$_AuthenticatedCopyWithImpl(
      _$_Authenticated _value, $Res Function(_$_Authenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function(
            RegisterProperties registerProperties,
            LoginProperties loginProperties,
            bool loggedInButNotVerified,
            String? errorMessage,
            String? snackbarMessage,
            bool? isLoading)
        notAuthenticated,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function(
            RegisterProperties registerProperties,
            LoginProperties loginProperties,
            bool loggedInButNotVerified,
            String? errorMessage,
            String? snackbarMessage,
            bool? isLoading)?
        notAuthenticated,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function(
            RegisterProperties registerProperties,
            LoginProperties loginProperties,
            bool loggedInButNotVerified,
            String? errorMessage,
            String? snackbarMessage,
            bool? isLoading)?
        notAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_NotAuthenticated value) notAuthenticated,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_NotAuthenticated value)? notAuthenticated,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_NotAuthenticated value)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated() = _$_Authenticated;
}

/// @nodoc
abstract class _$$_NotAuthenticatedCopyWith<$Res> {
  factory _$$_NotAuthenticatedCopyWith(
          _$_NotAuthenticated value, $Res Function(_$_NotAuthenticated) then) =
      __$$_NotAuthenticatedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {RegisterProperties registerProperties,
      LoginProperties loginProperties,
      bool loggedInButNotVerified,
      String? errorMessage,
      String? snackbarMessage,
      bool? isLoading});
}

/// @nodoc
class __$$_NotAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_NotAuthenticated>
    implements _$$_NotAuthenticatedCopyWith<$Res> {
  __$$_NotAuthenticatedCopyWithImpl(
      _$_NotAuthenticated _value, $Res Function(_$_NotAuthenticated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? registerProperties = null,
    Object? loginProperties = null,
    Object? loggedInButNotVerified = null,
    Object? errorMessage = freezed,
    Object? snackbarMessage = freezed,
    Object? isLoading = freezed,
  }) {
    return _then(_$_NotAuthenticated(
      registerProperties: null == registerProperties
          ? _value.registerProperties
          : registerProperties // ignore: cast_nullable_to_non_nullable
              as RegisterProperties,
      loginProperties: null == loginProperties
          ? _value.loginProperties
          : loginProperties // ignore: cast_nullable_to_non_nullable
              as LoginProperties,
      loggedInButNotVerified: null == loggedInButNotVerified
          ? _value.loggedInButNotVerified
          : loggedInButNotVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      snackbarMessage: freezed == snackbarMessage
          ? _value.snackbarMessage
          : snackbarMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoading: freezed == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_NotAuthenticated implements _NotAuthenticated {
  const _$_NotAuthenticated(
      {required this.registerProperties,
      required this.loginProperties,
      this.loggedInButNotVerified = false,
      this.errorMessage,
      this.snackbarMessage,
      this.isLoading});

  @override
  final RegisterProperties registerProperties;
  @override
  final LoginProperties loginProperties;
  @override
  @JsonKey()
  final bool loggedInButNotVerified;
  @override
  final String? errorMessage;
  @override
  final String? snackbarMessage;
  @override
  final bool? isLoading;

  @override
  String toString() {
    return 'AuthState.notAuthenticated(registerProperties: $registerProperties, loginProperties: $loginProperties, loggedInButNotVerified: $loggedInButNotVerified, errorMessage: $errorMessage, snackbarMessage: $snackbarMessage, isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NotAuthenticated &&
            (identical(other.registerProperties, registerProperties) ||
                other.registerProperties == registerProperties) &&
            (identical(other.loginProperties, loginProperties) ||
                other.loginProperties == loginProperties) &&
            (identical(other.loggedInButNotVerified, loggedInButNotVerified) ||
                other.loggedInButNotVerified == loggedInButNotVerified) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.snackbarMessage, snackbarMessage) ||
                other.snackbarMessage == snackbarMessage) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      registerProperties,
      loginProperties,
      loggedInButNotVerified,
      errorMessage,
      snackbarMessage,
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NotAuthenticatedCopyWith<_$_NotAuthenticated> get copyWith =>
      __$$_NotAuthenticatedCopyWithImpl<_$_NotAuthenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authenticated,
    required TResult Function(
            RegisterProperties registerProperties,
            LoginProperties loginProperties,
            bool loggedInButNotVerified,
            String? errorMessage,
            String? snackbarMessage,
            bool? isLoading)
        notAuthenticated,
  }) {
    return notAuthenticated(registerProperties, loginProperties,
        loggedInButNotVerified, errorMessage, snackbarMessage, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function(
            RegisterProperties registerProperties,
            LoginProperties loginProperties,
            bool loggedInButNotVerified,
            String? errorMessage,
            String? snackbarMessage,
            bool? isLoading)?
        notAuthenticated,
  }) {
    return notAuthenticated?.call(registerProperties, loginProperties,
        loggedInButNotVerified, errorMessage, snackbarMessage, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function(
            RegisterProperties registerProperties,
            LoginProperties loginProperties,
            bool loggedInButNotVerified,
            String? errorMessage,
            String? snackbarMessage,
            bool? isLoading)?
        notAuthenticated,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(registerProperties, loginProperties,
          loggedInButNotVerified, errorMessage, snackbarMessage, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_NotAuthenticated value) notAuthenticated,
  }) {
    return notAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_NotAuthenticated value)? notAuthenticated,
  }) {
    return notAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_NotAuthenticated value)? notAuthenticated,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _NotAuthenticated implements AuthState {
  const factory _NotAuthenticated(
      {required final RegisterProperties registerProperties,
      required final LoginProperties loginProperties,
      final bool loggedInButNotVerified,
      final String? errorMessage,
      final String? snackbarMessage,
      final bool? isLoading}) = _$_NotAuthenticated;

  RegisterProperties get registerProperties;
  LoginProperties get loginProperties;
  bool get loggedInButNotVerified;
  String? get errorMessage;
  String? get snackbarMessage;
  bool? get isLoading;
  @JsonKey(ignore: true)
  _$$_NotAuthenticatedCopyWith<_$_NotAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
