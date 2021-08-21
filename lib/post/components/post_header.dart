import 'package:flutter/material.dart';
import 'package:xb2_flutter/post/post.dart';

class PostHeader extends StatelessWidget {
  final Post post;

  PostHeader({
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                post.title!,
                style: Theme.of(context).textTheme.headline6,
              ),
              Text(
                post.user!.name!,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
