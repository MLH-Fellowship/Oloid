import 'package:flutter/material.dart';
import 'package:oloid/pages/home.dart';
import 'package:oloid/pages/login.dart';
import 'package:oloid/pages/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oloid',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/login': (context) => Login(),
        '/signup': (context) => Signup()
      },
    );
  }
}