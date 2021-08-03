import 'package:flutter/material.dart';
import 'package:socialmediaui/data/data.dart';
import 'package:socialmediaui/screen/homeScreen.dart';
import 'package:socialmediaui/screen/loginscreen.dart';
import 'package:socialmediaui/screen/profileScreen.dart';

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
      ),
      initialRoute: '/',
      routes: {
        '/loginpage': (context) => const LoginPage(),
        '/home': (context) => HomeScreen(),
        '/profileScreen': (context) => ProfileScreen(user: currentUser),
      },
    );
  }
}
