import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  void _handleLogin(BuildContext context) {
    // Aquí iría la lógica de autenticación
    // Simulación de una acción de inicio de sesión
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Iniciar sesión presionado')),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () => _handleLogin(context),
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
