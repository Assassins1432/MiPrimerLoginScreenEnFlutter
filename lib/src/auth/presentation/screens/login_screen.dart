import 'package:flutter/material.dart';
import 'package:mi_primer_loginscreen_en_flutter/widgets/login_button.dart';
import 'package:mi_primer_loginscreen_en_flutter/widgets/login_footer_text.dart';
import 'package:mi_primer_loginscreen_en_flutter/widgets/login_input_fields.dart';
import 'package:mi_primer_loginscreen_en_flutter/widgets/login_logo.dart';
import 'package:mi_primer_loginscreen_en_flutter/widgets/login_welcome_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void _hideKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    // Obtener el tamaño de la pantalla
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => _hideKeyboard(context),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 24.0),
              height: size.height, // Ajustar el tamaño del contenedor
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: size.height * 0.05), // Espaciado superior
                  const LoginLogo(),
                  SizedBox(
                      height: size.height *
                          0.09), // Espaciado entre logo y texto de bienvenida
                  const LoginWelcomeText(),
                  SizedBox(
                      height: size.height *
                          0.06), // Espaciado entre texto de bienvenida y campos de entrada
                  const LoginInputFields(),
                  SizedBox(
                      height: size.height *
                          0.08), // Espaciado entre campos de entrada y botón de ingresar
                  const LoginButton(),
                  SizedBox(
                      height: size.height *
                          0.08), // Espaciado entre botón de ingresar y textos de recuperación de contraseña
                  const LoginFooterText(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
