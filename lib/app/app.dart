import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/themes/app_theme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Image.asset(
            'assets/images/logo.png',
            width: 32,
            color: Colors.white,
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_horiz),
            ),
          ],
        ),
        body: Center(
          child: Text('NINGHAO.CO'),
        ),
      ),
    );
  }
}
