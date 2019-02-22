import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_my_yoga/utils/colors.dart';
import 'package:flutter_my_yoga/utils/textStyles.dart';
import 'package:flutter_my_yoga/pages/init_page.dart';
import 'package:flutter_my_yoga/pages/login_page.dart';
import 'package:flutter_my_yoga/pages/register_page.dart';
import 'package:flutter_my_yoga/pages/password_reset_page.dart';
import 'package:flutter_my_yoga/pages/detail_page.dart';
import 'package:flutter_my_yoga/pages/list_page.dart';


void main() => runApp(MyYoga());

class MyYoga extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return MyYogaState();
  }
}

class MyYogaState extends State<MyYoga> {
  final _streamController = StreamController<String>();

  @override
  void initState() {
    _streamController.add('init');
    Future.delayed(Duration(seconds: 20), () {
      _streamController.add('login');
    });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'My Yoga',
      theme: ThemeData(
        //primaryColor: YogaColors.red,
        //backgroundColor: YogaColors.red,
        //accentColor: YogaColors.red,
        //scaffoldBackgroundColor: YogaColors.red,
        textTheme: TextTheme(
          body1: TextStyle(
            color: YogaColors.white,
            fontSize: 30,
          ),
          body2: YogaTextStyles.googleSanRed,

        )
      ),

      routes: {
        '/login': (BuildContext context) => LoginPage(),
        '/register': (BuildContext context) => RegisterPage(),
        '/password_reset': (BuildContext context) => PasswordRestPage(),
        '/list' : (BuildContext context) => ListPage(),
        '/detail' : (BuildContext context) => DetailPage(),
      },

      home: StreamBuilder(
        stream: _streamController.stream,
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {

          if (snapshot.data == 'init') {
            return Stack(
              children: <Widget>[
                InitPage(),

                Center(
                  child: CircularProgressIndicator(
                    //value: 10,
                    backgroundColor: YogaColors.blue,
                    //valueColor: YogaColors.white,
                  ),
                ),

              ],
            );
          } else {
            return GestureDetector(
//              onHorizontalDragEnd: () {
//                print('dddddd');
//
//              },
              child: LoginPage(),
            );
          }

        }
      ),//ListPage(),//DetailPage(), //PasswordRestPage(),//RegisterPage(),//LoginPage(),//InitPage(),
    );
  }
}