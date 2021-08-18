import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/post/index/components/post_index_latest.dart';
import 'package:xb2_flutter/post/index/components/post_index_popular.dart';
import 'package:xb2_flutter/post/index/post_index_model.dart';

class PostIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => PostIndexModel(),
      child: TabBarView(
        children: [
          PostIndexLatest(),
          PostIndexPopular(),
        ],
      ),
    );
  }
}
