import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'MenuScreen.dart';
final GlobalKey<NavigatorState> myNavigatorKey = GlobalKey<NavigatorState>();
class LoginScreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => InitState();
}
class InitState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }
  Widget initWidget(){
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
                color: Color.fromARGB(255, 31, 142, 245),
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
                      margin: EdgeInsets.only(top: 50),
                      child: Image.asset("images/img.png"),
                      height: 90,
                      width: 90,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50),
                        alignment: Alignment.center,
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                        ),
                      ),
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
            Container(
              margin: EdgeInsets.only(top: 20, right: 20),
              alignment: Alignment.center,
              child: GestureDetector(
                child: Text("Forgot Password?"),
                onTap: () => {

                },
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
                  "LOGIN",
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
                  Text("Don't have an account?"),
                   GestureDetector(
                    onTap:() => {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SignUpScreen()
                      ))
                     },
                    child: Text(
                    " Register now",
                    style: TextStyle(
                    color: Color.fromARGB(255, 31, 142, 245)
    ),
    ),
    )

                  ]
    )
              ),

          ],
        ),
      ),
    );
  }
  }
