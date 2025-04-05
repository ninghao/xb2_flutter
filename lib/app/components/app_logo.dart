import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final double size;
  final Color? color;

  const AppLogo({super.key, this.size = 32, this.color});

  @override
  Widget build(BuildContext context) {
    Color logoColor;

    final brightness = MediaQuery.of(context).platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    if (color == null) {
      logoColor = isDarkMode ? Colors.grey : Colors.black;
    } else {
      logoColor = color!;
    }

    return Image.asset('assets/images/logo.png', width: size, color: logoColor);
  }
}
