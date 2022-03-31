import'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) =>
      Scaffold(

        appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 31, 142, 245),
        ),
      );
}