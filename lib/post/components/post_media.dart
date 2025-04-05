import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/app_config.dart';
import 'package:xb2_flutter/post/post.dart';

class PostMedia extends StatelessWidget {
  final Post post;

  const PostMedia({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final fileId = post.file?.id;
    final imageUrl = '${AppConfig.apiBaseUrl}/files/$fileId/serve?size=medium';

    return Image.network(
      imageUrl,
      fit: BoxFit.cover,
      loadingBuilder: (context, child, event) {
        if (event == null) return child;
        return ColoredBox(color: Colors.black12);
      },
    );
  }
}
