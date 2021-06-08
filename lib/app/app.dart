import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/themes/app_theme.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      home: Center(
        child: ElevatedButton(
          child: Text('NINGHAO'),
          onPressed: () {
            print('NINGHAO');
          },
        ),
      ),
    );
  }
}
