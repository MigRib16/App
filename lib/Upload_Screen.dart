import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UploadScreen extends StatelessWidget {
const UploadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Scaffold(

        appBar: AppBar(
          title: Text('Upload'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 31, 142, 245),
        ),
        // Lets the user pick one file; files with any file extension can be selected
FilePickerResult? result = await FilePicker.platform.pickFiles(
  type: FileType.custom,
  allowedExtensions: ['jpg', 'pdf', 'doc'],
);
      );
}