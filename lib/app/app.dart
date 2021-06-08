import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
