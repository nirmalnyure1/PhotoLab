import 'package:flutter/material.dart';
import 'package:socialmediaui/screen/loginscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter app',
      home: LoginPage(),
      theme: ThemeData(
        primaryColor: Colors.red,
      )
    );
  }
}

