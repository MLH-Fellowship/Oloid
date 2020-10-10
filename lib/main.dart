import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oloid',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AppBar(title: Text("Can't wait to work on this super amazing project!")),
    );
  }
}