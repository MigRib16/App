import'package:flutter/material.dart';

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
      );
}