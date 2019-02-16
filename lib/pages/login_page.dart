import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_my_yoga/utils/colors.dart';
import 'package:flutter_my_yoga/utils/textStyles.dart';

class LoginPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: YogaColors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 40, right: 40),
          child: Column(
            children: <Widget>[
              /// Logo
              Container(
                padding: EdgeInsets.only(top: 110),
                child: SvgPicture.asset(
                  'res/images/logo_red.svg',
                  width: 134,
                  //height: 285,
                  //semanticsLabel: 'Acme Logo'
                ),
              ),


              /// Email Field
              Padding(
                padding: EdgeInsets.only(top: 32),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                          color: YogaColors.black244
                      ),
//                        top: BorderSide(
//                            color: YogaColors.black244
//                        ),
                    ),
                  ),


                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                        flex:1,
                        child: Container(
                          //width: 26,
                          height: 40,
                          padding: EdgeInsets.only(bottom: 12),
                          //alignment: Alignment.bottomLeft,
                          child: SvgPicture.asset(
                            'res/images/email_icon.svg',
                            width: 134,
                            //height: 285,
                            //semanticsLabel: 'Acme Logo'
                          ),
                        ),
                      )
                      ,

                      Expanded(
                        flex: 4,
                        child: Container( /// Email
                          //width: 296,
                          padding: EdgeInsets.only(left: 0),
                          child: Column(
                            children: <Widget>[

                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'EMIAL',
                                  style: YogaTextStyles.googleSansBold,
                                ),
                              ),

                              TextField(
                                controller: TextEditingController(),
                                decoration: InputDecoration(
                                  hintText: 'myyogaapp@gmail.com',
                                  hintStyle: YogaTextStyles.googleSanHint,
                                  border: InputBorder.none,
                                  isDense: true,
//                                  enabledBorder: UnderlineInputBorder(
//                                    borderSide: BorderSide(
//                                      width: 1,
//                                      color: YogaColors.red,
//                                    )
//                                  ),
//                                  focusedBorder: UnderlineInputBorder(
//                                      borderSide: BorderSide(
//                                        width: 1,
//                                        color: YogaColors.red,
//                                      )
//                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),


              /// Password field
              Padding(
                padding: EdgeInsets.only(top: 32),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                            color: YogaColors.black244
                        ),
//                        top: BorderSide(
//                            color: YogaColors.black244
//                        ),
                      ),
                  ),


                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                        flex:1,
                        child: Container(
                          //width: 26,
                          height: 40,
                          padding: EdgeInsets.only(bottom: 12),
                          //alignment: Alignment.bottomLeft,
                          child: SvgPicture.asset(
                            'res/images/password_icon.svg',
                            width: 134,
                            //height: 285,
                            //semanticsLabel: 'Acme Logo'
                          ),
                        ),
                      )
                      ,

                      Expanded(
                        flex: 4,
                        child: Container(
                          //width: 296,
                          padding: EdgeInsets.only(left: 0),
                          child: Column(
                            children: <Widget>[

                              Container(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'PASSWORD',
                                  style: YogaTextStyles.googleSansBold,
                                ),
                              ),

                              TextField(
                                controller: TextEditingController(),
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'myyogaapp@gmail.com',
                                  hintStyle: YogaTextStyles.googleSanHint,
                                  isDense:true,
//                                  enabledBorder: UnderlineInputBorder(
//
//                                    borderSide: BorderSide(
//                                      width: 1,
//                                      color: YogaColors.red,
//                                    )
//                                  ),

                                ),

                              )
                            ],
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              ///
              ///
              Padding(
                padding: EdgeInsets.only(top: 0),
                child: Container(
                decoration: BoxDecoration(
                  border: Border(
//                    bottom: BorderSide(
//                        color: YogaColors.black244
//                    ),
//                    top: BorderSide(
//                        color: YogaColors.black244
//                    ),
                  ),
                ),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(top: 15),
                      decoration: BoxDecoration(
//                        border: Border(
//                          bottom: BorderSide(
//                              color: YogaColors.red
//                          ),
//                          top: BorderSide(
//                              color: YogaColors.black244
//                          ),
//                        ),
                      ),
                        child: Image.asset('res/images/sign_in_shadow.png'),
                      ),
                      Container(
                        child: SvgPicture.asset(
                          'res/images/login_button.svg',
                        ),
                      ),
                      Container(

                        child: Text('Forgot password?', style: YogaTextStyles.googleSanRed,),
                        alignment: Alignment.bottomCenter,
                        height: 120,
                      ),
                    ],
                  ),
                ),
              ),


              Container(
                //height: 20,
                padding: EdgeInsets.only(top: 60),
                child: Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Don’t have account ? ', style: YogaTextStyles.googleSanBlack77,),
                    Text('Sign up now', style: YogaTextStyles.googleSanBlack77Bold,),
                  ],
                ),
              ),


//              Container(
//                height: 50,
//                decoration: BoxDecoration(
//                  color: YogaColors.red,
//                  borderRadius: BorderRadius.all(
//                    Radius.circular(25.0)
//                  ),
//
//                  boxShadow: [
//                    BoxShadow(
//                      color: Colors.red,
//                      blurRadius: 10,
//                      spreadRadius: 10,
//                      offset: Offset(20, 20)
//                    ),
//                  ]
//                ),
//              ),

            ],
          ),
        ),
      ),
    );
  }
}