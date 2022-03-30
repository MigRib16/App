import 'package:app/Chat_Screen.dart';
import 'package:app/Graph_screen.dart';
import 'package:app/Upload_Screen.dart';
import'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) =>
      Scaffold(

        appBar: AppBar(
          title: Text('MENU'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 31, 142, 245),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              
              Container(
                margin: EdgeInsets.only(top: 8),
                child: OutlineButton(
                  child: Text("Upload"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),

                  color: Color.fromARGB(255, 31, 142, 245),
                  textColor: Color.fromARGB(255, 31, 142, 245),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                    builder: (context) => UploadScreen()
                    )
                    );
                    },
                ),
              ),


              Container(
                margin: EdgeInsets.only(top: 16),
                child: OutlineButton(
                  child: Text("Graph"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),

                  color: Color.fromARGB(255, 31, 142, 245),
                  textColor: Color.fromARGB(255, 31, 142, 245),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                    builder: (context) => GraphScreen()
                )
                );
                },
                ),
              ),


              Container(
                margin: EdgeInsets.only(top: 50),
                child: OutlineButton(
                  child: Text("Chat"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),

                  color: Color.fromARGB(255, 31, 142, 245),
                  textColor: Color.fromARGB(255, 31, 142, 245),
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ChatScreen()
                    )
                    );
                  },
                ),
              ),


              Container(
                margin: EdgeInsets.only(top: 32),
                child: OutlineButton(
                  child: Text("Exercises"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),

                  color: Color.fromARGB(255, 31, 142, 245),
                  textColor: Color.fromARGB(255, 31, 142, 245),
                  onPressed: () {},
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 4),
                child: OutlineButton(
                  child: Text("Perfil"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),

                  color: Color.fromARGB(255, 31, 142, 245),
                  textColor: Color.fromARGB(255, 31, 142, 245),
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ChatScreen()
                    )
                    );
                  },
                ),
              ),

            ],
          ),

        ),
      );
}