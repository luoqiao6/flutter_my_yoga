import 'package:flutter/material.dart';
import 'package:flutter_my_yoga/pages/init_page.dart';
import 'package:flutter_my_yoga/pages/login_page.dart';


Color red = Color.fromARGB(255, 254, 77, 151);
Color yellow = Color.fromARGB(255, 255, 216, 20);
Color purple = Color.fromARGB(255, 48, 18, 88);
Color blue = Color.fromARGB(255, 43, 68, 255);
Color green = Color.fromARGB(255, 0, 217, 101);
Color black = Color.fromARGB(255, 77, 77, 77);
Color black50 = Color.fromARGB(125, 77, 77, 77);
Color white = Color.fromARGB(255, 255, 246, 246);

//    Google Sans-Bold
//    Google Sans-Medium
//    Google Sans-Regular
//    Montserrat-ExtraLight
//    Montserrat-Medium
//    Montserrat-Regular
//    Montserrat-SemiBold
//    Telegrafico-Regular



void main() => runApp(MyYoga());

class MyYoga extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return MyYogaState();
  }
}

class MyYogaState extends State<MyYoga> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'My Yoga',
      theme: ThemeData(
        primaryColor: red,
        backgroundColor: red,
        accentColor: red,
        scaffoldBackgroundColor: red,
        textTheme: TextTheme(
          body1: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
          body2: TextStyle(color: black),

        )
      ),
      home: LoginPage(),//InitPage(),
    );
  }
}