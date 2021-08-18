import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/post/index/post_index_model.dart';

class PostList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = context.watch<PostIndexModel>();
    print(model.posts);

    return Container();
  }
}
