import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/components/app_logo.dart';
import 'package:xb2_flutter/playground/layout/components/playground_layout_item.dart';

class PlaygroundLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        color: Colors.greenAccent,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.network(
              'https://resources.ninghao.net/images/IMG_2680.JPG',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 24,
              right: 24,
              child: AppLogo(size: 64),
            ),
          ],
        ),
      ),
    );
  }
}
