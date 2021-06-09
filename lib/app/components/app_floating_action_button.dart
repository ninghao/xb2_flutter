import 'package:flutter/material.dart';
import 'package:xb2_flutter/app/components/app_bottom_sheet.dart';

class AppFloatingActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.share_outlined),
      onPressed: () {
        // 显示底部面板
        final bottomSheetController = showBottomSheet(
          context: context,
          builder: (context) => AppBottomSheet(),
        );
      },
      backgroundColor: Colors.black87,
      foregroundColor: Colors.white70,
    );
  }
}
