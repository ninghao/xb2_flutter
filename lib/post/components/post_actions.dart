import 'package:flutter/material.dart';
import 'package:xb2_flutter/post/post.dart';

class PostActions extends StatelessWidget {
  final Post post;

  PostActions({
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    final likeAction = Row(
      children: [
        Icon(post.liked == 0 ? Icons.favorite_border_outlined : Icons.favorite),
        if (post.totalLikes != 0)
          Container(
            padding: EdgeInsets.only(left: 4),
            child: Text('${post.totalLikes}'),
          ),
      ],
    );

    final commentAction = Row(
      children: [
        Icon(Icons.comment_outlined),
        if (post.totalComments != 0)
          Container(
            padding: EdgeInsets.only(left: 4),
            child: Text('${post.totalComments}'),
          ),
      ],
    );

    return Container(
      child: Row(
        children: [
          likeAction,
          SizedBox(width: 16),
          commentAction,
        ],
      ),
    );
  }
}
