import 'package:flutter/material.dart';
import 'package:xb2_flutter/post/post.dart';
import 'package:xb2_flutter/post/show/components/post_show_main.dart';

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
      body: PostShowMain(post: post!),
    );
  }
}
