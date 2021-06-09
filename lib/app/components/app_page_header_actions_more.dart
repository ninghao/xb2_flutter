import 'package:flutter/material.dart';

class AppPageHeaderActionsMore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(Icons.more_horiz),
      offset: Offset(0, 50),
      onCanceled: () {
        print('popupMenuButton: onCanceled');
      },
      onSelected: (value) {
        print('popupMenuButton: onSelected $value');
      },
      itemBuilder: (context) => [
        PopupMenuItem(
          child: Icon(
            Icons.view_agenda_outlined,
            color: Colors.black54,
          ),
          value: 'stack',
        ),
        PopupMenuItem(
          child: Icon(
            Icons.dashboard_outlined,
            color: Colors.black54,
          ),
          value: 'grid',
        ),
      ],
    );
  }
}
