import 'package:flutter/material.dart';

class PlaygroundHttp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            child: Text('发送请求'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
