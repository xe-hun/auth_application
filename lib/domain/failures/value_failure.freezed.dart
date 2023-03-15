// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function(T value) stringTooShort,
    required TResult Function(T value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidEmail,
    TResult? Function(T value)? stringTooShort,
    TResult? Function(T value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function(T value)? stringTooShort,
    TResult Function(T value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_StringTooShort<T> value) stringTooShort,
    required TResult Function(_Empty<T> value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_StringTooShort<T> value)? stringTooShort,
    TResult? Function(_Empty<T> value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_StringTooShort<T> value)? stringTooShort,
    TResult Function(_Empty<T> value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InvalidEmailCopyWith<T, $Res> {
  factory _$$_InvalidEmailCopyWith(
          _$_InvalidEmail<T> value, $Res Function(_$_InvalidEmail<T>) then) =
      __$$_InvalidEmailCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$_InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$_InvalidEmail<T>>
    implements _$$_InvalidEmailCopyWith<T, $Res> {
  __$$_InvalidEmailCopyWithImpl(
      _$_InvalidEmail<T> _value, $Res Function(_$_InvalidEmail<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InvalidEmail<T> implements _InvalidEmail<T> {
  const _$_InvalidEmail();

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InvalidEmail<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function(T value) stringTooShort,
    required TResult Function(T value) empty,
  }) {
    return invalidEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidEmail,
    TResult? Function(T value)? stringTooShort,
    TResult? Function(T value)? empty,
  }) {
    return invalidEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function(T value)? stringTooShort,
    TResult Function(T value)? empty,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_StringTooShort<T> value) stringTooShort,
    required TResult Function(_Empty<T> value) empty,
  }) {
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_StringTooShort<T> value)? stringTooShort,
    TResult? Function(_Empty<T> value)? empty,
  }) {
    return invalidEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_StringTooShort<T> value)? stringTooShort,
    TResult Function(_Empty<T> value)? empty,
    required TResult orElse(),
  }) {
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmail<T> implements ValueFailure<T> {
  const factory _InvalidEmail() = _$_InvalidEmail<T>;
}

/// @nodoc
abstract class _$$_StringTooShortCopyWith<T, $Res> {
  factory _$$_StringTooShortCopyWith(_$_StringTooShort<T> value,
          $Res Function(_$_StringTooShort<T>) then) =
      __$$_StringTooShortCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$_StringTooShortCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$_StringTooShort<T>>
    implements _$$_StringTooShortCopyWith<T, $Res> {
  __$$_StringTooShortCopyWithImpl(
      _$_StringTooShort<T> _value, $Res Function(_$_StringTooShort<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_StringTooShort<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_StringTooShort<T> implements _StringTooShort<T> {
  const _$_StringTooShort(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'ValueFailure<$T>.stringTooShort(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StringTooShort<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StringTooShortCopyWith<T, _$_StringTooShort<T>> get copyWith =>
      __$$_StringTooShortCopyWithImpl<T, _$_StringTooShort<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function(T value) stringTooShort,
    required TResult Function(T value) empty,
  }) {
    return stringTooShort(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidEmail,
    TResult? Function(T value)? stringTooShort,
    TResult? Function(T value)? empty,
  }) {
    return stringTooShort?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function(T value)? stringTooShort,
    TResult Function(T value)? empty,
    required TResult orElse(),
  }) {
    if (stringTooShort != null) {
      return stringTooShort(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_StringTooShort<T> value) stringTooShort,
    required TResult Function(_Empty<T> value) empty,
  }) {
    return stringTooShort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_StringTooShort<T> value)? stringTooShort,
    TResult? Function(_Empty<T> value)? empty,
  }) {
    return stringTooShort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_StringTooShort<T> value)? stringTooShort,
    TResult Function(_Empty<T> value)? empty,
    required TResult orElse(),
  }) {
    if (stringTooShort != null) {
      return stringTooShort(this);
    }
    return orElse();
  }
}

abstract class _StringTooShort<T> implements ValueFailure<T> {
  const factory _StringTooShort(final T value) = _$_StringTooShort<T>;

  T get value;
  @JsonKey(ignore: true)
  _$$_StringTooShortCopyWith<T, _$_StringTooShort<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EmptyCopyWith<T, $Res> {
  factory _$$_EmptyCopyWith(
          _$_Empty<T> value, $Res Function(_$_Empty<T>) then) =
      __$$_EmptyCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$_EmptyCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$_Empty<T>>
    implements _$$_EmptyCopyWith<T, $Res> {
  __$$_EmptyCopyWithImpl(_$_Empty<T> _value, $Res Function(_$_Empty<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Empty<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$_Empty<T> implements _Empty<T> {
  const _$_Empty(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'ValueFailure<$T>.empty(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Empty<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EmptyCopyWith<T, _$_Empty<T>> get copyWith =>
      __$$_EmptyCopyWithImpl<T, _$_Empty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidEmail,
    required TResult Function(T value) stringTooShort,
    required TResult Function(T value) empty,
  }) {
    return empty(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidEmail,
    TResult? Function(T value)? stringTooShort,
    TResult? Function(T value)? empty,
  }) {
    return empty?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidEmail,
    TResult Function(T value)? stringTooShort,
    TResult Function(T value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidEmail<T> value) invalidEmail,
    required TResult Function(_StringTooShort<T> value) stringTooShort,
    required TResult Function(_Empty<T> value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidEmail<T> value)? invalidEmail,
    TResult? Function(_StringTooShort<T> value)? stringTooShort,
    TResult? Function(_Empty<T> value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidEmail<T> value)? invalidEmail,
    TResult Function(_StringTooShort<T> value)? stringTooShort,
    TResult Function(_Empty<T> value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty<T> implements ValueFailure<T> {
  const factory _Empty(final T value) = _$_Empty<T>;

  T get value;
  @JsonKey(ignore: true)
  _$$_EmptyCopyWith<T, _$_Empty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
