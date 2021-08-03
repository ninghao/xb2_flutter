import 'package:flutter/material.dart';
import 'package:xb2_flutter/playground/layout/components/playground_layout_item.dart';

class PlaygroundLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        color: Colors.greenAccent,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              PlaygroundLayoutItem('1'),
              PlaygroundLayoutItem('2'),
              PlaygroundLayoutItem('3'),
            ],
          ),
        ),
      ),
    );
  }
}
