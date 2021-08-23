import 'package:flutter/material.dart';
import 'package:xb2_flutter/post/components/post_content.dart';
import 'package:xb2_flutter/post/components/post_header.dart';
import 'package:xb2_flutter/post/components/post_media.dart';
import 'package:xb2_flutter/post/components/post_tags.dart';
import 'package:xb2_flutter/post/post.dart';

class PostShowMain extends StatelessWidget {
  final Post post;

  PostShowMain({required this.post});

  @override
  Widget build(BuildContext context) {
    final closeButton = MaterialButton(
      onPressed: () {
        Navigator.maybePop(context);
      },
      child: Icon(
        Icons.close,
        size: 24,
        color: Colors.white60,
      ),
      color: Colors.black26,
      padding: EdgeInsets.all(4),
      shape: CircleBorder(),
      elevation: 0,
    );

    final postMedia = Stack(
      children: [
        PostMedia(post: post),
        Positioned(
          right: 0,
          top: 32,
          child: closeButton,
        ),
      ],
    );

    final postHeader = Container(
      padding: EdgeInsets.all(16),
      child: PostHeader(post: post),
    );

    final divider = Divider(
      height: 16,
      thickness: 1,
      indent: 16,
      endIndent: 16,
    );

    final postContent = Container(
      padding: EdgeInsets.all(16),
      child: PostContent(post: post),
    );

    final postTags = Container(
      padding: EdgeInsets.all(16),
      child: PostTags(tags: post.tags ?? []),
    );

    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            postMedia,
            postHeader,
            divider,
            if (post.content != null) postContent,
            if (post.tags != null) postTags,
          ],
        ),
      ),
    );
  }
}
