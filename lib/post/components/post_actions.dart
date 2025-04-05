import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/app/exceptions/http_exception.dart';
import 'package:xb2_flutter/like/create/like_create_model.dart';
import 'package:xb2_flutter/like/destroy/like_destroy_model.dart';
import 'package:xb2_flutter/post/post.dart';

class PostActions extends StatelessWidget {
  final Post post;

  const PostActions({super.key, required this.post});

  increaseTotalLikes() {
    post.totalLikes = post.totalLikes! + 1;
  }

  decreaseTotalLikes() {
    post.totalLikes = post.totalLikes != 0 ? post.totalLikes! - 1 : 0;
  }

  liked() {
    post.liked = 1;
    increaseTotalLikes();
  }

  unliked() {
    post.liked = 0;
    decreaseTotalLikes();
  }

  @override
  Widget build(BuildContext context) {
    final likeCreateModel = context.watch<LikeCreateModel>();
    final likeDestroyModel = context.watch<LikeDestroyModel>();

    onTapLikeAction() async {
      final ctx = context;

      if (post.liked == 0) {
        try {
          await likeCreateModel.createUserLikePost(post.id!);
          liked();
        } on HttpException catch (e) {
          if (!ctx.mounted) return;
          ScaffoldMessenger.of(
            ctx,
          ).showSnackBar(SnackBar(content: Text(e.message)));
        }
      } else {
        try {
          await likeDestroyModel.deleteUserLikePost(post.id!);
          unliked();
        } on HttpException catch (e) {
          if (!ctx.mounted) return;
          ScaffoldMessenger.of(
            ctx,
          ).showSnackBar(SnackBar(content: Text(e.message)));
        }
      }
    }

    final likeAction = Row(
      children: [
        GestureDetector(
          onTap: onTapLikeAction,
          child: Icon(
            post.liked == 0 ? Icons.favorite_border_outlined : Icons.favorite,
          ),
        ),
        if (post.totalLikes != 0)
          Padding(
            padding: EdgeInsets.only(left: 4),
            child: Text('${post.totalLikes}'),
          ),
      ],
    );

    final commentAction = Row(
      children: [
        Icon(Icons.comment_outlined),
        if (post.totalComments != 0)
          Padding(
            padding: EdgeInsets.only(left: 4),
            child: Text('${post.totalComments}'),
          ),
      ],
    );

    return Row(children: [likeAction, SizedBox(width: 16), commentAction]);
  }
}
