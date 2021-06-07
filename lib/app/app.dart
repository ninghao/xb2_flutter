import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        textDirection: TextDirection.ltr,
        text: TextSpan(
          text: '犬吠水声中，',
          style: TextStyle(
            fontSize: 22.0,
          ),
          children: [
            TextSpan(
              text: '桃花',
              style: TextStyle(
                color: Colors.pinkAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(
              text: '带露浓。',
            ),
          ],
        ),
      ),
    );
  }
}
