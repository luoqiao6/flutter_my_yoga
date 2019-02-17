import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_my_yoga/utils/colors.dart';

class InitPage extends StatefulWidget {

  @override
  _InitPageState createState() {
    return _InitPageState();
  }
}

class _InitPageState extends State<InitPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: YogaColors.red,
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                child: SvgPicture.asset(
                  'res/images/logo_name.svg',
                  width: 134,
                  //height: 285,
                  //semanticsLabel: 'Acme Logo'
                ),
              ),
            ),


            Expanded(
              flex: 2,
              child: Column(
                children: <Widget>[
                  Container(
                    child: Text('A Step to',),
                  ),
                  Container(
                    child: Text('healthy life'),
                  ),
                ],
              ),
            ),


            Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 4),
                    child: Container(
                      width: 13,
                      height: 13,
                      //padding: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        //color: Colors.white,
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                          shape: BoxShape.circle
                      ),
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(right: 4),
                    child: Container(
                      width: 13,
                      height: 13,
                      //padding: EdgeInsets.only(left: 4,right: 4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.white,
                            width: 2,
                          ),
                          shape: BoxShape.circle
                      ),
                    ),
                  ),

                  Container(
                    width: 13,
                    height: 13,
                    decoration: BoxDecoration(
                      //color: Colors.white,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        ),
                        shape: BoxShape.circle
                    ),
                  ),

                ],
              ),
            ),


          ],
        ),

      ),
    );
  }
}