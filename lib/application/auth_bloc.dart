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
              emit(s.copyWith(isLoading: true));
              (await authRepository.register(
                      name: s.registerProperties.name,
                      password: s.registerProperties.password,
                      email: s.registerProperties.email))
                  .fold(
                (l) => emit(s.copyWith(
                  isLoading: false,
                  errorMessage: _getErrorText(l),
                )),
                (r) {
                  add(const AuthEvent.sendOtp());
                  e.onSuccessful();
                  emit(s.copyWith(
                    isLoading: false,
                  ));
                },
              );
            },
          );
        },
        sendOtp: (e) async {
          await state.mapOrNull(notAuthenticated: (s) async {
            emit(s.copyWith(isLoading: true, errorMessage: null));
            (await authRepository.sendOtp(email: s.registerProperties.email))
                .fold(
                    (l) => emit(s.copyWith(
                        errorMessage: _getErrorText(l), isLoading: false)),
                    (r) => emit(s.copyWith(
                        snackbarMessage: 'Otp Sent Successfully',
                        errorMessage: null,
                        isLoading: false)));
          });
        },
        verifyOtp: (e) async {
          await state.mapOrNull(notAuthenticated: (s) async {
            // emit(s.copyWith(isLoading: true, errorMessage: null));
            (await authRepository.verifyOtp(otp: e.otp)).fold(
                (l) => emit(s.copyWith(
                      errorMessage: _getErrorText(l),
                    )), (r) {
              e.onVerifySuccess();
              emit(const AuthState.authenticated());
            }
                //navigation is automatically done in authListener in main page.
                );
          });
        },
        logout: (e) async {
          await state.mapOrNull(
            authenticated: (s) async {
              await authRepository.logout();
              e.onLogout();
              emit(AuthState.notAuthenticated(
                  registerProperties: RegisterProperties(),
                  loginProperties: LoginProperties()));
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
        invalidEmail: (e) => 'Email is not valid',
        authGenericFailure: (e) => 'Error!',
        errorSendingOtp: (e) => 'Error Sending otp',
        wrongOtp: (e) => 'You inputed the wrong otp');
  }
}