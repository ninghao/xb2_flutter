import 'package:flutter/material.dart';

class AuthModel extends ChangeNotifier {
  bool isLoggedIn = false;
  String name = '';

  login() {
    isLoggedIn = true;
    name = 'wanghao';
    print('请求登录！');
    notifyListeners();
  }

  logout() {
    isLoggedIn = false;
    name = '';
    print('退出登录！');
    notifyListeners();
  }
}
