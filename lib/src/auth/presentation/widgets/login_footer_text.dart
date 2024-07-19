import 'package:flutter/material.dart';

class LoginFooterText extends StatelessWidget {
  const LoginFooterText({super.key});

  void _handleForgotPassword(BuildContext context) {
    // Simulación de acción de recuperación de contraseña
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Recuperación de contraseña presionado')),
    );
  }

  void _handleTermsAndConditions(BuildContext context) {
    // Simulación de acción de términos y condiciones
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Términos y condiciones presionado')),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Column(
        children: [
          TextButton(
            onPressed: () => _handleForgotPassword(context),
            child: Text(
              '¿Olvidaste tu contraseña?',
              style:
                  TextStyle(color: Colors.grey, fontSize: size.width * 0.048),
            ),
          ),
          TextButton(
            onPressed: () => _handleTermsAndConditions(context),
            child: Text(
              'Términos y condiciones',
              style: TextStyle(
                  color: const Color.fromARGB(195, 0, 0, 0),
                  fontSize: size.width * 0.04),
            ),
          ),
        ],
      ),
    );
  }
}
