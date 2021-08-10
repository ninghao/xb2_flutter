import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/auth/auth_model.dart';

class AuthLoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authModel = Provider.of<AuthModel>(context);

    final loginButton = ElevatedButton(
      child: Text('登录'),
      onPressed: () {
        print('已登录：${authModel.isLoggedIn}');
        authModel.login();
        print('已登录：${authModel.isLoggedIn}');
      },
    );

    return Container(
      child: loginButton,
    );
  }
}
