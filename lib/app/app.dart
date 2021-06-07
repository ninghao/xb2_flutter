import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Image.asset(
          'assets/images/logo.png',
          width: 96,
          color: Colors.white,
        ),
        color: Colors.deepPurpleAccent,
        padding: EdgeInsets.all(60),
        alignment: Alignment.topCenter,
        width: 350,
        height: 350,
        transform: Matrix4.rotationZ(0.5),
        transformAlignment: Alignment.topRight,
      ),
    );
  }
}
