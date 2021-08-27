import 'package:flutter/material.dart';

class AppHeaderText extends StatelessWidget {
  final String data;

  AppHeaderText(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 32),
      child: Text(
        data,
        style: TextStyle(
          fontWeight: FontWeight.w300,
          fontSize: 32,
        ),
      ),
    );
  }
}
