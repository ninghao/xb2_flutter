import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;

  const AppButton({super.key, required this.onPressed, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          textStyle: TextStyle(fontSize: 20),
          minimumSize: Size(double.infinity, 60),
        ),
        onPressed: onPressed,
        child: Text(text ?? '按钮'),
      ),
    );
  }
}
