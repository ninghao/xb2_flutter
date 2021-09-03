import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;

  AppButton({
    required this.onPressed,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(fontSize: 20),
          minimumSize: Size(double.infinity, 60),
        ),
        child: Text('${text ?? '按钮'}'),
        onPressed: onPressed,
      ),
    );
  }
}
