import 'dart:async';

import 'package:flutter/material.dart';

import 'Login_screen.dart';
class SplashScreen extends StatefulWidget {

  @override
  State<SplashScreen> createState() => InitState();
}

class InitState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
    startTimer();
  }
  startTimer() async{
    var duration= Duration(seconds: 3);
    return new Timer(duration, loginRoute);
  }
  loginRoute(){
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) =>LoginScreen()
    ));
  }
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
Widget  initWidget() {
  return Scaffold(
      body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 31, 142, 245),
                  gradient: LinearGradient(
                    colors: [(new Color.fromARGB(255, 31, 142, 245)), (new Color.fromARGB(255, 31, 142, 245))],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,

                  )
              ),
            ),
            Center(
              child: Container(
                child:Image.asset("images/img.png"),

              ),
            ),
          ],
      ),
  );
}
}