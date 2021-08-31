import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/post/index/components/post_index_latest.dart';
import 'package:xb2_flutter/post/index/components/post_index_popular.dart';

class PostIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        PostIndexLatest(),
        PostIndexPopular(),
      ],
    );
  }
}
