import 'package:provider/provider.dart';
import 'package:xb2_flutter/app/app_service.dart';
import 'package:xb2_flutter/post/create/post_create_model.dart';
import 'package:xb2_flutter/post/index/post_index_model.dart';
import 'package:xb2_flutter/post/show/post_show_model.dart';

final postShowProvider = ChangeNotifierProvider<PostShowModel>(
  create: (context) => PostShowModel(),
);

final postIndexProvider =
    ChangeNotifierProxyProvider<AppService, PostIndexModel>(
  create: (context) => PostIndexModel(appService: context.read<AppService>()),
  update: (context, appService, postIndexModel) {
    return PostIndexModel(
      appService: appService,
      posts: postIndexModel?.posts,
      layout: postIndexModel?.layout,
    );
  },
);

final postCreateProvider =
    ChangeNotifierProxyProvider<AppService, PostCreateModel>(
  create: (context) => PostCreateModel(appService: context.read<AppService>()),
  update: (context, appService, postCreateModel) {
    return PostCreateModel(
      appService: appService,
    );
  },
);

final postProviders = [
  postShowProvider,
  postIndexProvider,
  postCreateProvider,
];
