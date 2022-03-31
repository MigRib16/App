import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GraphScreen extends StatelessWidget {
const GraphScreen({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) =>
      Scaffold(

        appBar: AppBar(
          title: Text('Data Graph'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 31, 142, 245),
        ),
      );
}