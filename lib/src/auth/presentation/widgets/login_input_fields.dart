import 'package:flutter/material.dart';

class LoginInputFields extends StatelessWidget {
  const LoginInputFields({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTextField(labelText: 'Usuario'),
        const Divider(color: Colors.black),
        SizedBox(
            height: size.height * 0.02), // Ajustar espaciado según la pantalla
        _buildTextField(labelText: 'Contraseña', obscureText: true),
        const Divider(color: Colors.black),
      ],
    );
  }

  Widget _buildTextField(
      {required String labelText, bool obscureText = false}) {
    return TextField(
      obscureText: obscureText,
      style: const TextStyle(
        color: Colors.black, // Color del texto del usuario
        fontSize: 23.0, // Tamaño del texto del usuario
        fontWeight: FontWeight.w400, // Grosor del texto del usuario
      ),
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 21.0,
        ),
        border: InputBorder.none,
        contentPadding: const EdgeInsets.symmetric(
            vertical: 1.0), // Ajustar el padding interno del campo de texto
      ),
    );
  }
}
