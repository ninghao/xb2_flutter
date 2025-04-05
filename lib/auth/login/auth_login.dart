import 'package:flutter/material.dart';
import 'package:xb2_flutter/auth/login/components/auth_login_form.dart';

class AuthLogin extends StatelessWidget {
  const AuthLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('用户登录')), body: AuthLoginForm());
  }
}
