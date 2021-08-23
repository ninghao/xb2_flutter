import 'package:flutter/material.dart';
import 'package:xb2_flutter/post/post.dart';

class PostShow extends StatelessWidget {
  final String postId;
  final Post? post;

  PostShow(
    this.postId, {
    this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          post!.title!,
          style: Theme.of(context).textTheme.headline6,
        ),
      ),
    );
  }
}
