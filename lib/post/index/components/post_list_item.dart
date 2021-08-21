import 'package:flutter/material.dart';
import 'package:xb2_flutter/post/post.dart';

class PostListItem extends StatelessWidget {
  final Post item;

  PostListItem({
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 16),
      child: Column(
        children: [
          Text(
            item.title!,
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      ),
    );
  }
}
