import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/post/index/post_index_model.dart';

class AppPageHeaderActionsMore extends StatelessWidget {
  const AppPageHeaderActionsMore({super.key});

  @override
  Widget build(BuildContext context) {
    final postIndexModel = context.watch<PostIndexModel>();

    return PopupMenuButton(
      icon: Icon(Icons.more_horiz),
      offset: Offset(0, 50),
      onSelected: (PostListLayout value) {
        postIndexModel.storeLayout(value);
      },
      itemBuilder:
          (context) => [
            PopupMenuItem(
              value: PostListLayout.stack,
              child: Icon(
                Icons.view_agenda_outlined,
                color:
                    postIndexModel.layout == PostListLayout.stack
                        ? Theme.of(context).primaryColor
                        : null,
              ),
            ),
            PopupMenuItem(
              value: PostListLayout.grid,
              child: Icon(
                Icons.grid_view,
                color:
                    postIndexModel.layout == PostListLayout.grid
                        ? Theme.of(context).primaryColor
                        : null,
              ),
            ),
          ],
    );
  }
}
