import 'package:flutter/material.dart';

class PlaygroundRouting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: TextButton(
          child: Text('查看宁皓网介绍'),
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/about',
              arguments: {'user': 'wanghao'},
            );
          },
        ),
      ),
    );
  }
}
