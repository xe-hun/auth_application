import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail() = _InvalidEmail;
  const factory ValueFailure.stringTooShort(T value) = _StringTooShort<T>;
  const factory ValueFailure.empty(T value) = _Empty<T>;
}
