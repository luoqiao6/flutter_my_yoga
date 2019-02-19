import 'package:flutter/material.dart';
import 'package:flutter_my_yoga/utils/colors.dart';
import 'package:flutter_my_yoga/utils/textStyles.dart';
//import 'package:flutter_my_yoga/pages/init_page.dart';
//import 'package:flutter_my_yoga/pages/login_page.dart';
//import 'package:flutter_my_yoga/pages/register_page.dart';
//import 'package:flutter_my_yoga/pages/password_reset_page.dart';
//import 'package:flutter_my_yoga/pages/detail_page.dart';
import 'package:flutter_my_yoga/pages/list_page.dart';


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
        primaryColor: YogaColors.red,
        backgroundColor: YogaColors.red,
        accentColor: YogaColors.red,
        //scaffoldBackgroundColor: YogaColors.red,
        textTheme: TextTheme(
          body1: TextStyle(
            color: YogaColors.white,
            fontSize: 30,
          ),
          body2: YogaTextStyles.googleSanRed,

        )
      ),
      home: ListPage(),//DetailPage(), //PasswordRestPage(),//RegisterPage(),//LoginPage(),//InitPage(),
    );
  }
}