import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class PostCreateMedia extends StatefulWidget {
  @override
  _PostCreateMediaState createState() => _PostCreateMediaState();
}

class _PostCreateMediaState extends State<PostCreateMedia> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButton(
        child: Text('选择文件'),
        onPressed: () async {
          FilePickerResult? result = await FilePicker.platform.pickFiles(
            type: FileType.image,
          );
          if (result != null) {
            print(result.files.first);
          }
        },
      ),
    );
  }
}
