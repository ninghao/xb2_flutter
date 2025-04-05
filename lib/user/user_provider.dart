import 'package:provider/provider.dart';
import 'package:xb2_flutter/user/create/user_create_model.dart';

final userCreateProvider = ChangeNotifierProvider(
  create: (context) => UserCreateModel(),
);

final userProviders = [
  userCreateProvider,
];
