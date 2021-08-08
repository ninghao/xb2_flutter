import 'package:flutter/material.dart';
import 'package:xb2_flutter/playground/routing/components/about.dart';

class PlaygroundRouting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: TextButton(
          child: Text('查看宁皓网介绍'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return About();
              },
            ));
          },
        ),
      ),
    );
  }
}
