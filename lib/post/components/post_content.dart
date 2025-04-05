import 'package:flutter/material.dart';
import 'package:xb2_flutter/post/post.dart';

class PostContent extends StatelessWidget {
  final Post post;

  const PostContent({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Text(
      post.content!,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
        color: Theme.of(context).textTheme.bodyLarge!.color,
      ),
    );
  }
}
