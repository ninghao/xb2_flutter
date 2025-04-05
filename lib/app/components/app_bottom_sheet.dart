import 'package:flutter/material.dart';

class AppBottomSheet extends StatefulWidget {
  const AppBottomSheet({super.key});

  @override
  State<AppBottomSheet> createState() => _AppBottomSheetState();
}

class _AppBottomSheetState extends State<AppBottomSheet> {
  // 显示对话框
  Future<bool?> showAppAlertDialog(context) {
    return showDialog<bool>(
      context: context,
      builder:
          (context) => AlertDialog(
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

  // 显示操作提示
  void showAppSnackBar(context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('提交成功'),
        action: SnackBarAction(label: '关闭', onPressed: () {}),
        duration: Duration(seconds: 3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
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
            final ctx = context;
            // 显示对话框
            final result = await showAppAlertDialog(ctx);

            if (result != null && result) {
              if (!ctx.mounted) return;
              showAppSnackBar(ctx);
            }
          },
        ),
      ),
    );
  }
}
