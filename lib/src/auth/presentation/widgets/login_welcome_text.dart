import 'package:flutter/material.dart';

class LoginWelcomeText extends StatelessWidget {
  const LoginWelcomeText({super.key});

  Widget _buildText(
      String text, Color color, double fontSize, FontWeight fontWeight) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final fontSize = size.width * 0.068;
    const fontWeight = FontWeight.bold;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildText('Buenas tardes!', Colors.black, fontSize, fontWeight),
        _buildText('¿Cómo has estado?', Colors.grey, fontSize, fontWeight),
      ],
    );
  }
}
