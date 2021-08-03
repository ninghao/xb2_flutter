import 'package:flutter/material.dart';

class PlaygroundLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      width: 200,
      height: 200,
      child: Center(
        child: Container(
          color: Colors.deepPurpleAccent,
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}
