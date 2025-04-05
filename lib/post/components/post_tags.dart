import 'package:flutter/material.dart';
import 'package:xb2_flutter/post/post.dart';

class PostTags extends StatelessWidget {
  final List<PostTag> tags;

  const PostTags({super.key, required this.tags});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children:
          tags.map((tag) {
            return Chip(label: Text(tag.name!));
          }).toList(),
    );
  }
}
