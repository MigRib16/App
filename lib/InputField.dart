import'package:flutter/material.dart';
class InputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Colors.grey[200]!)
              )
          ),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Enter your mail",
                hintStyle: TextStyle(color: Colors.grey),
                border: InputBorder.none
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.grey[200]!)
            )
          ),
          child: TextField(
             obscureText: true,                  //Meter '****'
             decoration: InputDecoration(
              hintText: "Enter your password",
              hintStyle: TextStyle( color: Colors.grey),
              border: InputBorder.none
              
            ),
          ),
        ),
      ],
    );
  }
}