import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:mi_primer_loginscreen_en_flutter/src/auth/domain/models/email.dart';
import 'package:mi_primer_loginscreen_en_flutter/src/auth/domain/models/password.dart';

class LoginFormState {
  final Email email;
  final Password password;
  final FormzSubmissionStatus status;

  LoginFormState({
    this.email = const Email.pure(),
    this.password = const Password.pure(),
    this.status = FormzSubmissionStatus.initial,
  });

  LoginFormState copyWith({
    Email? email,
    Password? password,
    FormzSubmissionStatus? status,
  }) {
    return LoginFormState(
      email: email ?? this.email,
      password: password ?? this.password,
      status: status ?? this.status,
    );
  }
}

class LoginFormNotifier extends StateNotifier<LoginFormState> {
  LoginFormNotifier() : super(LoginFormState());

  void emailChanged(String value) {
    final email = Email.dirty(value);
    final status = Formz.validate([email, state.password])
        ? FormzSubmissionStatus.success
        : FormzSubmissionStatus.failure;
    state = state.copyWith(email: email, status: status);
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    final status = Formz.validate([state.email, password])
        ? FormzSubmissionStatus.success
        : FormzSubmissionStatus.failure;
    state = state.copyWith(password: password, status: status);
  }

  void submit() {
    final status = Formz.validate([state.email, state.password])
        ? FormzSubmissionStatus.success
        : FormzSubmissionStatus.failure;
    if (status == FormzSubmissionStatus.success) {
      print('Email: ${state.email.value}, Password: ${state.password.value}');
    }
    state = state.copyWith(status: status);
  }
}

final loginFormProvider =
    StateNotifierProvider<LoginFormNotifier, LoginFormState>((ref) {
  return LoginFormNotifier();
});
