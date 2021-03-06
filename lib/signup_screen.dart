import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'MenuScreen.dart';
class SignUpScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => InitState();
}
class InitState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
                gradient: LinearGradient(
                  colors: [(new Color.fromARGB(255, 31, 142, 245)), (new Color.fromARGB(255, 31, 142, 245))],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                )
              ),
        child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top:50),
                child: Image.asset("images/img.png"),
                height: 90,
                width: 90,

              ),
              Container(
                margin: EdgeInsets.only(right:20, top:20),
                alignment: Alignment.center,
                child: Text(
                  "Register",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  )
                )
              )
            ],
        ),
            ),
    ),
    Container(
    margin: EdgeInsets.only(left: 20, right: 20, top:70),
    padding: EdgeInsets.only(left: 20, right: 20),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(50),
    color: Colors.grey[200],
    boxShadow: [BoxShadow(
    offset: Offset(0,10),
    blurRadius: 50,
    color: Color(0xffEEEEEE),
    )],

    ),
    alignment: Alignment.center,
    child:  TextField(
    cursorColor: Color.fromARGB(255, 31, 142, 245),
    decoration: InputDecoration(
    icon: Icon(
    Icons.person,
    color: Color.fromARGB(255, 31, 142, 245),
    ),
    hintText: "Full Name",
    enabledBorder: InputBorder.none,
    focusedBorder: InputBorder.none,
    ),
    ),
    ),
    Container(
    margin: EdgeInsets.only(left: 20, right: 20, top:20),
    padding: EdgeInsets.only(left: 20, right: 20),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(50),
    color: Colors.grey[200],
    boxShadow: [BoxShadow(
    offset: Offset(0,10),
    blurRadius: 50,
    color: Color(0xffEEEEEE),
    )],

    ),
    alignment: Alignment.center,
    child:  TextField(
    keyboardType: TextInputType.number,
    inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],  
    cursorColor: Color.fromARGB(255, 31, 142, 245),
    decoration: InputDecoration(
    icon: Icon(
    Icons.phone,
    color: Color.fromARGB(255, 31, 142, 245),
    ),
    hintText: "Phone Number",
    enabledBorder: InputBorder.none,
    focusedBorder: InputBorder.none,
    ),
    ),
    ),
    Container(
    margin: EdgeInsets.only(left: 20, right: 20, top:20),
    padding: EdgeInsets.only(left: 20, right: 20),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(50),
    color: Colors.grey[200],
    boxShadow: [BoxShadow(
    offset: Offset(0,10),
    blurRadius: 50,
    color: Color(0xffEEEEEE),
    )],

    ),
    alignment: Alignment.center,
    child:  TextField(
    cursorColor: Color.fromARGB(255, 31, 142, 245),
    decoration: InputDecoration(
    icon: Icon(
    Icons.email,
    color: Color.fromARGB(255, 31, 142, 245),
    ),
    hintText: "Enter Email",
    enabledBorder: InputBorder.none,
    focusedBorder: InputBorder.none,
    ),
    ),
    ),
    Container(
    margin: EdgeInsets.only(left: 20, right: 20, top:20),
    padding: EdgeInsets.only(left: 20, right: 20),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(50),
    color: Colors.grey[200],
    boxShadow: [BoxShadow(
    offset: Offset(0,10),
    blurRadius: 50,
    color: Color(0xffEEEEEE),
    )],

    ),
    alignment: Alignment.center,
    child:  TextField(
      obscureText: true,
    cursorColor: Color.fromARGB(255, 31, 142, 245),
    decoration: InputDecoration(
    icon: Icon(
    Icons.vpn_key,
    color: Color.fromARGB(255, 31, 142, 245),
    ),
    hintText: "Enter Password",
    enabledBorder: InputBorder.none,
    focusedBorder: InputBorder.none,
    ),
    ),
    ),
            GestureDetector(
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => MenuScreen()
                ))
              },
              child: Container(
                margin: EdgeInsets.only(left: 20, right:20, top:70),
                padding: EdgeInsets.only(left:20, right:20),
                alignment: Alignment.center,
                height: 54,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [(new Color.fromARGB(255, 31, 142, 245)), (new Color.fromARGB(255, 31, 142, 245))],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,

                  ),
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [BoxShadow(
                      offset: Offset(0,10),
                      blurRadius: 50,
                      color: Color(0xffEEEEEE)
                  )],
                ),
                child: Text(
                  "REGISTER",
                  style: TextStyle(
                      color: Colors.white
                  ),


                ),
              ),
            ),
              Container(
              margin: EdgeInsets.only(top:10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Already a Member?"),
    GestureDetector(
    onTap:() => {
    Navigator.pop(context)
    },
    child: Text(
    " Login Now",
    style: TextStyle(
    color: Color.fromARGB(255, 31, 142, 245)
    ),
    ),
    ),

        ]
        ),
      ),
        ]
        ),

      )
    );
  }
}