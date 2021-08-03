import 'package:flutter/material.dart';

class PlaygroundLayoutItem extends StatelessWidget {
  final String textContent;

  PlaygroundLayoutItem(this.textContent);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 24.0,
        horizontal: 32.0,
      ),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 3.0,
          ),
          color: Colors.yellow[200]),
      child: Text(
        textContent,
        style: TextStyle(
          fontSize: 22.0,
        ),
      ),
    );
  }
}
