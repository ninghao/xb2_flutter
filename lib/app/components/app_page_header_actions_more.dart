import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/post/index/post_index_model.dart';

class AppPageHeaderActionsMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final postIndexModel = context.watch<PostIndexModel>();

    return PopupMenuButton(
      icon: Icon(Icons.more_horiz),
      offset: Offset(0, 50),
      onCanceled: () {
        print('popupMenuButton: onCanceled');
      },
      onSelected: (PostListLayout value) {
        postIndexModel.storeLayout(value);
        print('popupMenuButton: onSelected $value');
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          child: Icon(
            Icons.view_agenda_outlined,
            color: postIndexModel.layout == PostListLayout.stack
                ? Theme.of(context).primaryColor
                : Colors.black,
          ),
          value: PostListLayout.stack,
        ),
        PopupMenuItem(
          child: Icon(
            Icons.grid_view,
            color: postIndexModel.layout == PostListLayout.grid
                ? Theme.of(context).primaryColor
                : Colors.black,
          ),
          value: PostListLayout.grid,
        ),
      ],
    );
  }
}
