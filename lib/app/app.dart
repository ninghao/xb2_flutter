import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/app/app_model.dart';
import 'package:xb2_flutter/app/components/app_home.dart';
import 'package:xb2_flutter/app/router/app_route_information_parser.dart';
import 'package:xb2_flutter/app/router/app_router_delegate.dart';
import 'package:xb2_flutter/app/themes/app_theme.dart';
import 'package:xb2_flutter/auth/auth_model.dart';
import 'package:xb2_flutter/playground/routing/components/about.dart';
import 'package:xb2_flutter/post/post_provider.dart';
import 'package:xb2_flutter/post/show/post_show.dart';
import 'package:xb2_flutter/post/show/post_show_model.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final AppModel appModel = AppModel();
  final AuthModel authModel = AuthModel();

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: authModel),
        ChangeNotifierProvider.value(value: appModel),
        ...postProviders,
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        routerDelegate: AppRouterDelegate(appModel),
        routeInformationParser: AppRouteInformationParser(),
      ),
    );
  }
}
