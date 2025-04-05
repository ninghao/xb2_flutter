import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
  restoreLayout() async {
    final prefs = await SharedPreferences.getInstance();
    final data = prefs.getString('postListLayout');

    if (data != null) {
      PostListLayout layout = PostListLayout.values.firstWhere((item) {
        return item.toString() == data;
      });

      context.read<PostIndexModel>().setLayout(layout);
    }
  }

  @override
  void initState() {
    super.initState();

    Future.microtask(() {
      context.read<PostIndexModel>().getPosts(
            sort: widget.sort ?? 'latest',
          );
    });

    // 恢复布局
    restoreLayout();
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

    final gridList = StaggeredGridView.countBuilder(
      crossAxisCount: 2,
      crossAxisSpacing: 8,
      mainAxisSpacing: 8,
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return PostListItem(
          item: posts[index],
          layout: PostListLayout.grid,
        );
      },
      staggeredTileBuilder: (index) {
        final post = posts[index];

        int crossAxisCount = 1;
        double mainAxisCount = 1;

        bool isPortrait = false;

        if (post.file!.width != null && post.file!.height != null) {
          isPortrait = post.file!.width! < post.file!.height!;
        }

        if (isPortrait) {
          mainAxisCount = 1.5;
        }

        return StaggeredTile.count(crossAxisCount, mainAxisCount);
      },
    );

    Widget postList = stackList;

    if (model.layout == PostListLayout.grid) {
      postList = gridList;
    }

    return posts.length == 0 ? noContent : postList;
  }
}
