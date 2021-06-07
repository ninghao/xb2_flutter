import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network(
        'https://resources.ninghao.net/images/IMG_2490.JPG',
      ),
    );
  }
}
