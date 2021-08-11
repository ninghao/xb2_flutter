import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xb2_flutter/app/app_model.dart';

class PlaygroundRouting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appModel = Provider.of<AppModel>(context);

    return Container(
      color: Colors.white,
      child: Center(
        child: TextButton(
          child: Text('查看内容'),
          onPressed: () {
            appModel.setPageName('About');
          },
        ),
      ),
    );
  }
}
