import 'package:mi_primer_loginscreen_en_flutter/src/auth/domain/models/email.dart';
import 'package:mi_primer_loginscreen_en_flutter/src/auth/domain/models/password.dart';

extension EmailValidationErrorX on EmailValidationError {
  String text() {
    switch (this) {
      case EmailValidationError.invalid:
        return 'Por Favor ingresa un correo válido';
      case EmailValidationError.empty:
        return 'Por favor ingresa un correo';
    }
  }
}

extension PasswordValidationErrorX on PasswordValidationError {
  String text() {
    switch (this) {
      case PasswordValidationError.invalid:
        return 'La contraseña debe tener al menos 8 caracteres, una letra y un número';
      case PasswordValidationError.empty:
        return 'Por favor ingresa una contraseña';
    }
  }
}
