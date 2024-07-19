import 'package:flutter/material.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.topLeft,
      child: Image.asset(
        'assets/images/Imagotipo.png',
        width: size.width * 0.38, // Ajustar tamaño según la pantalla
      ),
    );
  }
}
