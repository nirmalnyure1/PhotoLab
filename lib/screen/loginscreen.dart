import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:socialmediaui/screen/homeScreen.dart';
import 'package:socialmediaui/widgets/clipperdesign.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        bottomSheet: GestureDetector(
          onTap: () {
            log("message1");
          },
          child: Container(
            alignment: Alignment.center,
            height: 70.0,
            width: double.infinity,
            color: Colors.red,
            child: Text(
              "Dont have account? SignUp",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15.0, color: Colors.white),
            ),
          ),
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Container(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipPath(
                    clipper: ClipperDesign(),
                    child: Image(
                      image: AssetImage('assets/images/bg2.png'),
                      height: queryData.size.height / 3,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    "Photo - Lab",
                    style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.red,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, right: 10.0),
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade100,
                            offset: Offset(0, 1),
                            blurRadius: 6.0,
                            spreadRadius: 5,
                          ),
                        ]),
                    child: TextField(
                      controller: emailController,
                      onChanged: (value) => {email = value},
                      maxLines: 1,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        prefixIcon: Icon(
                          Icons.account_box_rounded,
                          color: Colors.red,
                          size: 30.0,
                        ),
                        hintStyle: TextStyle(color: Colors.grey.shade900),
                        hintText: '   username',
                        fillColor: Colors.white,
                      ),
                      enabled: true,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0, right: 10.0),
                    padding: EdgeInsets.only(left: 20.0, right: 20.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade100,
                            offset: Offset(0, 1),
                            blurRadius: 6.0,
                            spreadRadius: 5,
                          ),
                        ]),
                    child: TextField(
                      controller: passwordController,
                      onChanged: (value) => {password = value},
                      maxLines: 1,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        prefixIcon: Icon(
                          Icons.password_rounded,
                          color: Colors.red,
                          size: 30.0,
                        ),
                        hintStyle: TextStyle(color: Colors.grey.shade900),
                        hintText: '   password',
                        fillColor: Colors.white,
                      ),
                      enabled: true,
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      log('message');
                      print(
                          'your emil is $email and your password is $password');
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.red,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            offset: Offset(2, 1),
                            blurRadius: 6.0,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 120, vertical: 18),
                        child: Text(
                          'LogIn',
                          style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                              letterSpacing: 5),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
