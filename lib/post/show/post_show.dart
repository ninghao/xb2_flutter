import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/app/components/app_no_content.dart';
import 'package:xb2_flutter/post/post.dart';
import 'package:xb2_flutter/post/show/components/post_show_main.dart';
import 'package:xb2_flutter/post/show/post_show_model.dart';

class PostShow extends StatefulWidget {
  final String postId;
  final Post? post;

  PostShow(
    this.postId, {
    this.post,
  });

  @override
  _PostShowState createState() => _PostShowState();
}

class _PostShowState extends State<PostShow> {
  @override
  void initState() {
    super.initState();

    if (widget.post == null) {
      context.read<PostShowModel>().getPostById(widget.postId);
    }
  }

  @override
  Widget build(BuildContext context) {
    Post? post = widget.post;

    if (widget.post == null) {
      post = context.watch<PostShowModel>().post;
    }

    return Scaffold(
      body: post != null ? PostShowMain(post: post) : AppNoContent(),
    );
  }
}
