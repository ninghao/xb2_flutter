import 'package:flutter/material.dart';

class AuthLoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginButton = ElevatedButton(
      child: Text('登录'),
      onPressed: () {},
    );

    return Container(
      child: loginButton,
    );
  }
}
