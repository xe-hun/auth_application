import 'dart:async';

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
          final userIsVerified = await authRepository.userIsVerified;

          if (authRepository.userIsLoggedIn && userIsVerified == true) {
            emit(const AuthState.authenticated());
          } else {
            emit(AuthState.notAuthenticated(
              registerProperties: RegisterProperties(),
              loginProperties: LoginProperties(),
            ));
          }
        },
        login: (e) async {
          await state.mapOrNull(
            notAuthenticated: (s) async {
              emit(s.copyWith(isLoading: true, errorMessage: null));

              await (await authRepository.login(
                      password: s.loginProperties.password,
                      email: s.loginProperties.email))
                  .fold(
                (l) async => emit(s.copyWith(
                  isLoading: false,
                  snackbarMessage: null,
                  errorMessage: _getErrorText(l),
                )),
                (r) async {
                  if (await authRepository.userIsVerified) {
                    e.onSuccessful();
                    emit(const AuthState.authenticated());
                  } else {
                    emit(s.copyWith(
                      isLoading: false,
                      errorMessage: null,
                      snackbarMessage: null,
                    ));
                    e.onNotVerified();
                  }

                  final userIsVerified = await authRepository.userIsVerified;
                  assert(
                      userIsVerified == true &&
                              state.mapOrNull(authenticated: (v) => v) !=
                                  null ||
                          userIsVerified == false,
                      "Don't forget to set state to authenticated if user is verified");
                },
              );
            },
          );
        },
        register: (e) async {
          await state.mapOrNull(
            notAuthenticated: (s) async {
              emit(s.copyWith(isLoading: true, errorMessage: null));
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
            await (await authRepository.sendOtp(
                    email: s.registerProperties.email))
                .fold(
                    (l) async => emit(s.copyWith(
                        errorMessage: _getErrorText(l), isLoading: false)),
                    (r) async => emit(s.copyWith(
                        snackbarMessage: 'Otp Sent Successfully',
                        errorMessage: null,
                        isLoading: false)));

            add(const AuthEvent.initializeOtpCountdown());
          });
        },
        verifyOtp: (e) async {
          await state.mapOrNull(notAuthenticated: (s) async {
            // emit(s.copyWith(isLoading: true, errorMessage: null));
            (await authRepository.verifyOtp(otp: e.otp)).fold((l) {
              e.onVerifyFailure();
              emit(s.copyWith(
                errorMessage: _getErrorText(l),
              ));
            }, (r) {
              e.onVerifySuccess();
              emit(const AuthState.authenticated());
            });
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
        initializeOtpCountdown: (e) async {
          await state.mapOrNull(notAuthenticated: (s) async {
            timerCountdown.value = 0;
            if (_timer != null) {
              _timer!.cancel();
              _timer = null;
            }
            timerCountdown.value = 50;
            _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
              timerCountdown.value -= 1;
              if (timerCountdown.value <= 0) {
                timerCountdown.value = 0;
                timer.cancel();
              }
            });
          });
        },
      );
    });
  }

  final timerCountdown = ValueNotifier<int>(0);
  bool get canSendOtp => timerCountdown.value == 0;

  Timer? _timer;
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
