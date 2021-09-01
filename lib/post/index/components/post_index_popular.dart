import 'package:flutter/material.dart';
import 'package:xb2_flutter/post/index/components/post_list.dart';

class PostIndexPopular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: PostList(
        sort: 'most_comments',
      ),
    );
  }
}
