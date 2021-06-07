import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Icon(
          Icons.landscape_rounded,
          color: Colors.amber,
          size: 128,
        ),
      ),
    );
  }
}
