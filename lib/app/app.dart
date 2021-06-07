import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '犬吠水声中，桃花带露浓。树深时见鹿，溪午不闻钟。',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 22.0,
        ),
        textAlign: TextAlign.center,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
