import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:formz/formz.dart';
import 'package:mi_primer_loginscreen_en_flutter/src/auth/presentation/providers/login_form_providers.dart';

class LoginButton extends ConsumerWidget {
  const LoginButton({super.key});

  void _handleLogin(BuildContext context, WidgetRef ref) {
    final loginFormState = ref.read(loginFormProvider);

    if (loginFormState.status == FormzSubmissionStatus.success) {
      ref.read(loginFormProvider.notifier).submit();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Formulario Enviado a la Debug Console')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Formulario inválido')),
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => _handleLogin(context, ref),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red,
          padding: EdgeInsets.symmetric(vertical: size.height * 0.015),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(size.width * 0.03),
          ),
        ),
        child: Text(
          'Ingresar',
          style: TextStyle(
            fontSize: size.width * 0.060,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
