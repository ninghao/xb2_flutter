import 'package:flutter/material.dart';

class PlaygroundRouting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: TextButton(
          child: Text('查看内容'),
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/posts/6',
              arguments: {'user': 'wanghao'},
            );
          },
        ),
      ),
    );
  }
}
