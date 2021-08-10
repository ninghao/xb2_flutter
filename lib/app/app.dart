import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/app/components/app_home.dart';
import 'package:xb2_flutter/app/themes/app_theme.dart';
import 'package:xb2_flutter/auth/auth_model.dart';
import 'package:xb2_flutter/playground/routing/components/about.dart';
import 'package:xb2_flutter/post/show/post_show.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AuthModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.light,
        darkTheme: AppTheme.dark,
        initialRoute: '/',
        // routes: {
        //   '/': (context) => AppHome(),
        //   '/about': (context) => About(),
        // },
        onGenerateRoute: (settings) {
          print(settings);

          if (settings.name == '/') {
            return MaterialPageRoute(builder: (context) => AppHome());
          }

          if (settings.name == '/about') {
            return MaterialPageRoute(builder: (context) => About());
          }

          final uri = Uri.parse(settings.name ?? '');

          // posts/:postId
          if (uri.pathSegments.length == 2 &&
              uri.pathSegments.first == 'posts') {
            final postId = uri.pathSegments[1];
            return MaterialPageRoute(builder: (context) => PostShow(postId));
          }
        },
      ),
    );
  }
}
