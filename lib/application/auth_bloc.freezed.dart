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
    required TResult Function(dynamic Function() onSuccessful) register,
    required TResult Function() login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(dynamic Function() onSuccessful)? register,
    TResult? Function()? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(dynamic Function() onSuccessful)? register,
    TResult Function()? login,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
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
    required TResult Function(dynamic Function() onSuccessful) register,
    required TResult Function() login,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(dynamic Function() onSuccessful)? register,
    TResult? Function()? login,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(dynamic Function() onSuccessful)? register,
    TResult Function()? login,
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
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
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
    required TResult Function(dynamic Function() onSuccessful) register,
    required TResult Function() login,
  }) {
    return register(onSuccessful);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(dynamic Function() onSuccessful)? register,
    TResult? Function()? login,
  }) {
    return register?.call(onSuccessful);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(dynamic Function() onSuccessful)? register,
    TResult Function()? login,
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
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
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
}

/// @nodoc
class __$$_LoginCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Login>
    implements _$$_LoginCopyWith<$Res> {
  __$$_LoginCopyWithImpl(_$_Login _value, $Res Function(_$_Login) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login();

  @override
  String toString() {
    return 'AuthEvent.login()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Login);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(dynamic Function() onSuccessful) register,
    required TResult Function() login,
  }) {
    return login();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(dynamic Function() onSuccessful)? register,
    TResult? Function()? login,
  }) {
    return login?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(dynamic Function() onSuccessful)? register,
    TResult Function()? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Register value) register,
    required TResult Function(_Login value) login,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Register value)? register,
    TResult? Function(_Login value)? login,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Register value)? register,
    TResult Function(_Login value)? login,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthEvent {
  const factory _Login() = _$_Login;
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
            String? errorText,
            bool? isLoadiing)
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
            String? errorText,
            bool? isLoadiing)?
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
            String? errorText,
            bool? isLoadiing)?
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
            String? errorText,
            bool? isLoadiing)
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
            String? errorText,
            bool? isLoadiing)?
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
            String? errorText,
            bool? isLoadiing)?
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
            String? errorText,
            bool? isLoadiing)
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
            String? errorText,
            bool? isLoadiing)?
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
            String? errorText,
            bool? isLoadiing)?
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
      String? errorText,
      bool? isLoadiing});
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
    Object? errorText = freezed,
    Object? isLoadiing = freezed,
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
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
      isLoadiing: freezed == isLoadiing
          ? _value.isLoadiing
          : isLoadiing // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_NotAuthenticated implements _NotAuthenticated {
  const _$_NotAuthenticated(
      {required this.registerProperties,
      required this.loginProperties,
      this.errorText,
      this.isLoadiing});

  @override
  final RegisterProperties registerProperties;
  @override
  final LoginProperties loginProperties;
  @override
  final String? errorText;
  @override
  final bool? isLoadiing;

  @override
  String toString() {
    return 'AuthState.notAuthenticated(registerProperties: $registerProperties, loginProperties: $loginProperties, errorText: $errorText, isLoadiing: $isLoadiing)';
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
            (identical(other.errorText, errorText) ||
                other.errorText == errorText) &&
            (identical(other.isLoadiing, isLoadiing) ||
                other.isLoadiing == isLoadiing));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, registerProperties, loginProperties, errorText, isLoadiing);

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
            String? errorText,
            bool? isLoadiing)
        notAuthenticated,
  }) {
    return notAuthenticated(
        registerProperties, loginProperties, errorText, isLoadiing);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? authenticated,
    TResult? Function(
            RegisterProperties registerProperties,
            LoginProperties loginProperties,
            String? errorText,
            bool? isLoadiing)?
        notAuthenticated,
  }) {
    return notAuthenticated?.call(
        registerProperties, loginProperties, errorText, isLoadiing);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authenticated,
    TResult Function(
            RegisterProperties registerProperties,
            LoginProperties loginProperties,
            String? errorText,
            bool? isLoadiing)?
        notAuthenticated,
    required TResult orElse(),
  }) {
    if (notAuthenticated != null) {
      return notAuthenticated(
          registerProperties, loginProperties, errorText, isLoadiing);
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
      final String? errorText,
      final bool? isLoadiing}) = _$_NotAuthenticated;

  RegisterProperties get registerProperties;
  LoginProperties get loginProperties;
  String? get errorText;
  bool? get isLoadiing;
  @JsonKey(ignore: true)
  _$$_NotAuthenticatedCopyWith<_$_NotAuthenticated> get copyWith =>
      throw _privateConstructorUsedError;
}
