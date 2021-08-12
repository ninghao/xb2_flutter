import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/app_model.dart';
import 'package:xb2_flutter/app/components/app_home.dart';
import 'package:xb2_flutter/playground/routing/components/about.dart';

class AppRouterDelegate extends RouterDelegate
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final _navigatorKey;
  final AppModel appModel;

  AppRouterDelegate(this.appModel)
      : _navigatorKey = GlobalKey<NavigatorState>();

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
      pages: [
        MaterialPage(
          key: ValueKey('AppHome'),
          child: AppHome(),
        ),
        if (appModel.pageName == 'About')
          MaterialPage(
            key: ValueKey('About'),
            child: About(),
          ),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }

        appModel.setPageName('');

        return true;
      },
    );
  }
}
