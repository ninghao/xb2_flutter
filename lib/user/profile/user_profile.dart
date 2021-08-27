import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/app/app_model.dart';
import 'package:xb2_flutter/auth/auth_model.dart';

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 准备
    final appModel = context.read<AppModel>();
    final authModel = context.watch<AuthModel>();

    // 登录
    final login = TextButton(
      child: Text('请登录'),
      onPressed: () {
        appModel.setPageName('AuthLogin');
      },
    );

    // 用户
    final userProfile = TextButton(
      child: Text(authModel.name),
      onPressed: () {
        authModel.logout();
      },
    );

    return Container(
      color: Colors.white,
      height: double.infinity,
      width: double.infinity,
      child: Center(
        child: authModel.isLoggedIn ? userProfile : login,
      ),
    );
  }
}
