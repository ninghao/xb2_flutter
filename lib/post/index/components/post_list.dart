import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/post/index/components/post_list_item.dart';
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
    final posts = model.posts ?? [];

    final noContent = Center(
      child: Container(
        child: Text('暂无内容'),
      ),
    );

    final list = ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return PostListItem(item: posts[index]);
      },
    );

    return posts.length == 0 ? noContent : list;
  }
}
