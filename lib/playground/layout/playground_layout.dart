import 'package:flutter/material.dart';
import 'package:xb2_flutter/playground/layout/components/playground_layout_item.dart';

class PlaygroundLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: PlaygroundLayoutItem('1'),
    );
  }
}
