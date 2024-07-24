import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mi_primer_loginscreen_en_flutter/src/auth/presentation/providers/login_form_providers.dart';
import 'package:mi_primer_loginscreen_en_flutter/src/auth/presentation/extensions.dart'; // Asegúrate de importar las extensiones

class LoginForm extends ConsumerWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginFormState = ref.watch(loginFormProvider);

    return Column(
      children: [
        TextField(
          onChanged: (value) =>
              ref.read(loginFormProvider.notifier).emailChanged(value),
          style: const TextStyle(
              color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.w500),
          decoration: InputDecoration(
            labelText: 'Email',
            labelStyle: const TextStyle(color: Colors.black, fontSize: 22.0),
            errorText: loginFormState.email.displayError?.text(),
            suffixIcon: const Icon(Icons.mail),
          ),
        ),
        TextField(
          onChanged: (value) =>
              ref.read(loginFormProvider.notifier).passwordChanged(value),
          style: const TextStyle(
              color: Colors.black, fontSize: 22.0, fontWeight: FontWeight.w500),
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Contraseña',
            labelStyle: const TextStyle(color: Colors.black, fontSize: 22.0),
            errorText: loginFormState.password.displayError?.text(),
            suffixIcon: const Icon(Icons.lock),
          ),
        ),
      ],
    );
  }
}
