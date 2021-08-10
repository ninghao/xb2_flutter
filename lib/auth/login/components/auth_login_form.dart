import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/auth/auth_model.dart';

class AuthLoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final authModel = Provider.of<AuthModel>(context, listen: true);

    final loginButton = ElevatedButton(
      child: Text('登录'),
      onPressed: () {
        print('已登录：${authModel.isLoggedIn}');
        authModel.login();
        print('已登录：${authModel.isLoggedIn}');
      },
    );

    final logoutButton = ElevatedButton(
      child: Text('退出登录'),
      onPressed: () {
        print('已登录：${authModel.isLoggedIn}');
        authModel.logout();
        print('已登录：${authModel.isLoggedIn}');
      },
    );

    return Container(
      child: authModel.isLoggedIn ? logoutButton : loginButton,
    );
  }
}
