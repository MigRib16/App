import 'package:app/Chat_Screen.dart';
import 'package:app/Graph_screen.dart';
import 'package:app/Profile_Screen.dart';
import 'package:app/Upload_Screen.dart';
import 'package:app/Exercises_Screen.dart';
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
                child: ButtonTheme(
                  minWidth: 150.0,
                  height: 70.0,
               child: OutlineButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(
                    builder: (context) => UploadScreen()
                       )
                      );
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


            Container(
                margin: EdgeInsets.only(top: 16),
                child: ButtonTheme(
                  minWidth: 150.0,
                  height: 70.0,
               child: OutlineButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(
                    builder: (context) => GraphScreen()
                       )
                      );
                    },
                child: Text("Graph"),
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
              


               Container(
                margin: EdgeInsets.only(top: 16),
                child: ButtonTheme(
                  minWidth: 150.0,
                  height: 70.0,
               child: OutlineButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ChatScreen()
                       )
                      );
                    },
                child: Text("Chat"),
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


               Container(
                margin: EdgeInsets.only(top: 16),
                child: ButtonTheme(
                  minWidth: 150.0,
                  height: 70.0,
               child: OutlineButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ExercisesScreen()
                       )
                      );
                    },
                child: Text("Exercises"),
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

              Container(
                margin: EdgeInsets.only(top: 16),
                child: ButtonTheme(
                  minWidth: 150.0,
                  height: 70.0,
               child: OutlineButton(
                  onPressed: () {Navigator.push(context, MaterialPageRoute(
                    builder: (context) => ProfileScreen()
                       )
                      );
                    },
                child: Text("Profile"),
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
}