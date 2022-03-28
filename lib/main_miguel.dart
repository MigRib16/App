@@ -5,6 +5,7 @@ import 'package:app/logic/models/mysql.dart';
import 'package:flutter/material.dart';
import 'Header.dart';
import 'InputWrapper.dart';
import 'LoginPage.dart';



@@ -15,11 +16,12 @@ class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
title: 'Flutter Demo',
debugShowCheckedModeBanner: false,
title: 'Deticare App',
theme: ThemeData(
primarySwatch: Colors.blue,
),
home: MyHomePage(title: 'Flutter and Mysql Demo Home Page'),
home: LoginPage(),
);
}
}
@@ -37,7 +39,7 @@ class _MyHomePageState extends State<MyHomePage> {
var db = new Mysql();
var mail = '';

void _getCustomer() {
void _addCustomer() {
db.getConnection().then((conn) {
String sql = 'select mail from company.customer where id = 10;';
conn.query(sql).then((results) {
@@ -72,8 +74,8 @@ class _MyHomePageState extends State<MyHomePage> {
),
),
floatingActionButton: FloatingActionButton(
onPressed: _getCustomer,
tooltip: 'Increment',
onPressed: _addCustomer,
tooltip: 'Login',
child: Icon(Icons.add),
),
);