import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/app/app_model.dart';
import 'package:xb2_flutter/app/components/app_home.dart';
import 'package:xb2_flutter/app/router/app_route_configuration.dart';
import 'package:xb2_flutter/auth/login/auth_login.dart';
import 'package:xb2_flutter/playground/routing/components/about.dart';
import 'package:xb2_flutter/post/show/post_show.dart';
import 'package:xb2_flutter/post/show/post_show_model.dart';
import 'package:xb2_flutter/user/create/user_create.dart';

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
  setNewRoutePath(configuration) async {
    if (configuration.isHomePage) {
      appModel.setPageName('');
    }

    if (configuration.isAboutPage) {
      appModel.setPageName('About');
    }

    if (configuration.isPostShow) {
      appModel.setPageName('PostShow');
      appModel.setResourceId('${configuration.resourceId}');
    }
  }

  // 当前路由配置
  @override
  get currentConfiguration {
    if (appModel.pageName == '') {
      return AppRouteConfiguration.home();
    }

    if (appModel.pageName == 'About') {
      return AppRouteConfiguration.about();
    }

    if (appModel.pageName == 'PostShow') {
      return AppRouteConfiguration.postShow(appModel.resourceId);
    }
  }

  @override
  Widget build(BuildContext context) {
    final postShowModel = context.read<PostShowModel>();

    return Navigator(
      // key: _navigatorKey,
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
        if (appModel.pageName == 'PostShow' && appModel.resourceId != null)
          MaterialPage(
            key: ValueKey('PostShow'),
            child: PostShow(
              appModel.resourceId!,
              post: postShowModel.post,
            ),
          ),
        if (appModel.pageName == 'AuthLogin')
          MaterialPage(
            key: ValueKey('AuthLogin'),
            child: AuthLogin(),
          ),
        if (appModel.pageName == 'UserCreate')
          MaterialPage(
            key: ValueKey('UserCreate'),
            child: UserCreate(),
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
