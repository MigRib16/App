import 'dart:ui';

import 'package:file_picker/file_picker.dart';
import 'package:open_file/open_file.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//https://rrtutors.com/tutorials/Flutter-CSV-File-Import-and-Convert-CSV-File-to-List
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
        body: Container(
          alignment: Alignment.center,
          constraints: BoxConstraints(maxWidth: 1000),
          padding: EdgeInsets.all(32),
          width: 500.0,
          height: 200.0,
          child: ElevatedButton(
            child: Text('Pick file'),
             style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 31, 142, 245),
              fixedSize: const Size(240, 80),  //Tamanho do botão
              shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50))),
            onPressed: () async{
              final result = await FilePicker.platform.pickFiles();
              if(result==null) return;

              //Open single file
              final file=result.files.first;
              openFile(file);
            },
          ),
          ),

       
      );
void openFile(PlatformFile file){
  OpenFile.open(file.path!);
}
}