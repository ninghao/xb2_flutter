import 'package:provider/provider.dart';
import 'package:xb2_flutter/post/index/post_index_model.dart';
import 'package:xb2_flutter/post/show/post_show_model.dart';

final postShowProvider = ChangeNotifierProvider<PostShowModel>(
  create: (context) => PostShowModel(),
);

final postIndexProvider = ChangeNotifierProvider(
  create: (_) => PostIndexModel(),
);

final postProviders = [
  postShowProvider,
  postIndexProvider,
];
