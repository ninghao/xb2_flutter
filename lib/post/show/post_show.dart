import 'package:flutter/material.dart';

class PostShow extends StatelessWidget {
  final String postId;

  PostShow(this.postId);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          '内容：$postId',
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
