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
      child: Text('登录'),
      onPressed: () {
        appModel.setPageName('AuthLogin');
      },
    );

    // 注册
    final register = TextButton(
      child: Text('注册'),
      onPressed: () {
        appModel.setPageName('UserCreate');
      },
    );

    // 分隔
    final separator = Text('/');

    // 动作
    final actions = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        login,
        separator,
        register,
      ],
    );

    // 用户
    final userProfile = TextButton(
      child: Text(authModel.name),
      onPressed: () {
        authModel.logout();
      },
    );

    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Center(
        child: authModel.isLoggedIn ? userProfile : actions,
      ),
    );
  }
}
