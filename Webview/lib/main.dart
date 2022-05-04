import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  late WebViewController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'webview',
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(top: 30.0),
          child: WebView(

            initialUrl: 'http://deticare.web.ua.pt',
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (controller) {
              this.controller = controller;
            },
          ),

        ),
      ),

    );
  }
}

