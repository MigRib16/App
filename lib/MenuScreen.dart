import'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) =>
      Scaffold(

        appBar: AppBar(
          title: Text('MENU'),
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
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

                  color: Colors.red,
                  textColor: Colors.red,
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: OutlineButton(
                  child: Text("DATA"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),

                  color: Colors.red,
                  textColor: Colors.red,
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 24),
                child: OutlineButton(
                  child: Text("CHAT"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),

                  color: Colors.red,
                  textColor: Colors.red,
                  onPressed: () {},
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 32),
                child: OutlineButton(
                  child: Text("EXERCISES"),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                  ),

                  color: Colors.red,
                  textColor: Colors.red,
                  onPressed: () {},
                ),
              ),
            ],
          ),

        ),
      );
}