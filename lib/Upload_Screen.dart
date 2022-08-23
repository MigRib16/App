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
        body: Center( 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 1),
                child: ButtonTheme(
                  minWidth: 150.0,
                  height: 70.0,
               child: OutlineButton(
               onPressed: () async{
              final result = await FilePicker.platform.pickFiles();
              if(result==null) return;

              //Open single file
              final file=result.files.first;
              openFile(file);
               },
                    
                child: Text("Upload"),
                textColor: Color.fromARGB(255, 31, 142, 245),
                shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 31, 142, 245),
                  style: BorderStyle.solid,
                  width: 1,
                           ),
                        ),
                     )
                  ),
            ],
          ),
          ),
      );
void openFile(PlatformFile file){
  OpenFile.open(file.path!);
}
}