import 'package:flutter/material.dart';

class AppBottomSheet extends StatelessWidget {
  // 显示对话框
  Future<bool?> showAppAlertDialog(context) {
    return showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('确定提交'),
        content: Text('提交以后无法恢复，确定要提交吗？'),
        actions: [
          TextButton(
            child: Text('取消'),
            onPressed: () => Navigator.pop(context, false),
          ),
          TextButton(
            child: Text('确定'),
            onPressed: () => Navigator.pop(context, true),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, -20),
            blurRadius: 30,
          ),
        ],
      ),
      child: Center(
        child: TextButton(
          child: Text('提交'),
          onPressed: () async {
            // 显示对话框
            final result = await showAppAlertDialog(context);
            print('showAppAlertDialog: $result');
          },
        ),
      ),
    );
  }
}
