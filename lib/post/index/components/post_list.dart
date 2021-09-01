import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/post/index/components/post_list_item.dart';
import 'package:xb2_flutter/post/index/post_index_model.dart';

class PostList extends StatefulWidget {
  final String? sort;

  PostList({
    this.sort,
  });

  @override
  _PostListState createState() => _PostListState();
}

class _PostListState extends State<PostList> {
  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      context.read<PostIndexModel>().getPosts(
            sort: widget.sort ?? 'latest',
          );
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

    final stackList = ListView.builder(
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return PostListItem(item: posts[index]);
      },
    );

    final gridList = GridView.builder(
      itemCount: posts.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (context, index) {
        return PostListItem(
          item: posts[index],
          layout: PostListLayout.grid,
        );
      },
    );

    Widget postList = stackList;

    if (model.layout == PostListLayout.grid) {
      postList = gridList;
    }

    return posts.length == 0 ? noContent : postList;
  }
}
