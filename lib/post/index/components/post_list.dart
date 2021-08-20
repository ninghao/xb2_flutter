import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/post/index/post_index_model.dart';

class PostList extends StatefulWidget {
  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      context.read<PostIndexModel>().getPosts();
    });
  }

  @override
  Widget build(BuildContext context) {
    final model = context.watch<PostIndexModel>();

    model.posts!.forEach((post) {
      print(post.toJson());
    });

    return Container();
  }
}
