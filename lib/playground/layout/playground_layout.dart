import 'package:flutter/material.dart';
import 'package:xb2_flutter/playground/layout/components/playground_layout_item.dart';

class PlaygroundLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        color: Colors.greenAccent,
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: PlaygroundLayoutItem('1'),
                flex: 2,
              ),
              Expanded(
                child: PlaygroundLayoutItem('2'),
                flex: 1,
              ),
              PlaygroundLayoutItem('3'),
            ],
          ),
        ),
      ),
    );
  }
}
