import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
        'https://resources.ninghao.net/images/IMG_2490.JPG',
        width: 350,
        height: 350,
        fit: BoxFit.cover,
        alignment: Alignment.bottomRight,
        color: Colors.brown,
        colorBlendMode: BlendMode.softLight,
      ),
    );
  }
}
