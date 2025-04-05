import 'package:provider/provider.dart';
import 'package:xb2_flutter/app/app_service.dart';
import 'package:xb2_flutter/auth/auth_model.dart';

final appServiceProvider = ChangeNotifierProxyProvider<AuthModel, AppService>(
  create: (context) => AppService(authModel: context.read<AuthModel>()),
  update: (context, authModel, appService) => AppService(authModel: authModel),
);

final appPrividers = [
  appServiceProvider,
];
