import 'package:flutter/material.dart';

class AppRouterDelegate extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final _navigatorKey;

  AppRouterDelegate() : _navigatorKey = GlobalKey<NavigatorState>();

  // 获取 Navigator 使用的 Key
  @override
  get navigatorKey => _navigatorKey;

  // 设置新路由地址
  @override
  setNewRoutePath(configuration) {
    print('设置新路由地址 setNewRoutePath');

    return Future.value();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _navigatorKey,
    );
  }
}
