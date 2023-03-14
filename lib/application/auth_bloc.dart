import 'package:auth_appication/domain/failures/auth_failure.dart';
import 'package:auth_appication/domain/i_repository/i_auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@lazySingleton
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this.authRepository) : super(const AuthState.initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        started: (e) async {
          emit(AuthState.notAuthenticated(
            registerProperties: RegisterProperties(),
            loginProperties: LoginProperties(),
          ));
        },
        login: (e) async {},
        register: (e) async {
          await state.mapOrNull(
            notAuthenticated: (s) async {
              emit(s.copyWith(isLoadiing: true));
              (await authRepository.register(
                      name: s.registerProperties.name,
                      password: s.registerProperties.password,
                      email: s.registerProperties.email))
                  .fold(
                (l) => emit(s.copyWith(
                  isLoadiing: false,
                  errorText: _getErrorText(l),
                )),
                (r) {
                  e.onSuccessful();
                  emit(s.copyWith(isLoadiing: false));
                },
              );
            },
          );
        },
      );
    });
  }

  final IAuthRepository authRepository;
  _getErrorText(AuthFailure authFailure) {
    return authFailure.map(
        networkFailure: (e) => 'Network Error',
        weekPassword: (e) => 'Your password is too weak, you may not proceed',
        accountAlreadyExist: (e) =>
            'Account with email ${e.email} already exists',
        userNotFound: (e) => 'Enter a valid email or password',
        wrongPassword: (e) => 'Enter a valid email or password',
        authGenericFailure: (e) => 'Error!');
  }
}
