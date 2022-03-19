import'package:flutter/material.dart';

class Header extends StatelessWidget {
  get child => null;

  @override
  Widget build(BuildContext context) {
     return Padding(
       padding: EdgeInsets.all(20),
       child:Column(
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Center(
             child: Text("Login",style: TextStyle(color: Colors.white, fontSize: 40),),
           ),
           SizedBox(height: 10,),
           Center(
           child: Text("Welcome to deticare",style: TextStyle(color: Colors.white, fontSize: 18),),
           ),
         ],
       ),

     );
  }
}