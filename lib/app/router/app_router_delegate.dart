import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/app_model.dart';
import 'package:xb2_flutter/app/components/app_home.dart';
import 'package:xb2_flutter/app/router/app_route_configuration.dart';
import 'package:xb2_flutter/playground/routing/components/about.dart';

class AppRouterDelegate extends RouterDelegate<AppRouteConfiguration>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin {
  final _navigatorKey;
  final AppModel appModel;

  AppRouterDelegate(this.appModel)
      : _navigatorKey = GlobalKey<NavigatorState>() {
    // 监听 appModel
    appModel.addListener(notifyListeners);
  }

  // 销毁资源
  @override
  void dispose() {
    super.dispose();

    // 取消监听 appModel
    appModel.removeListener(notifyListeners);
  }

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
