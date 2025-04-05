import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xb2_flutter/app/app_model.dart';
import 'package:xb2_flutter/app/app_provider.dart';
import 'package:xb2_flutter/app/router/app_route_information_parser.dart';
import 'package:xb2_flutter/app/router/app_router_delegate.dart';
import 'package:xb2_flutter/app/themes/app_theme.dart';
import 'package:xb2_flutter/auth/auth.dart';
import 'package:xb2_flutter/auth/auth_model.dart';
import 'package:xb2_flutter/like/like_provider.dart';
import 'package:xb2_flutter/post/post_provider.dart';
import 'package:xb2_flutter/user/user_provider.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  final AppModel appModel = AppModel();
  final AuthModel authModel = AuthModel();

  initialize() async {
    final prefs = await SharedPreferences.getInstance();
    final hasAuth = prefs.containsKey('auth');

    if (hasAuth) {
      final auth = Auth.fromJson(jsonDecode(prefs.getString('auth')!));

      authModel.setAuth(auth);
    }

    appModel.setInitializing(false);
  }

  @override
  void initState() {
    super.initState();
    initialize();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: authModel),
        ChangeNotifierProvider.value(value: appModel),
        ...appPrividers,
        ...postProviders,
        ...likeProviders,
        ...userProviders,
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
