import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/router/app_route_configuration.dart';

class AppRouteInformationParser
    extends RouteInformationParser<AppRouteConfiguration> {
  // 解析路由信息
  @override
  parseRouteInformation(routeInformation) async {
    print('解析路由信息 parseRouteInformation');
    print(routeInformation.location);

    if (routeInformation.location == '/about') {
      return AppRouteConfiguration.about();
    }

    return AppRouteConfiguration.home();
  }

  // 恢复路由信息
  @override
  restoreRouteInformation(configuration) {
    if (configuration.isHomePage) {
      return RouteInformation(location: '/');
    }

    if (configuration.isAboutPage) {
      return RouteInformation(location: '/about');
    }
  }
}
