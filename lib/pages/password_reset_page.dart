import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_my_yoga/utils/colors.dart';
import 'package:flutter_my_yoga/utils/textStyles.dart';

class PasswordRestPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _PasswordRestPageState();
  }
}

class _PasswordRestPageState extends State<PasswordRestPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 40, right: 40),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[


              /// Circle log
              Padding(
                padding: EdgeInsets.only(top: 88),
                child: Container(
                  child: SvgPicture.asset(
                    'res/images/logo_circle.svg',
                    width: 206,
                  ),
                ),
              ),


              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  child: Text('Forget Passowrd?', style: YogaTextStyles.googleSanBlack77Medium,),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  child: Text(
                    'We just need your registered Email Id to',
                    style: YogaTextStyles.googleSanBlack161Medium,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 0),
                child: Container(
                  child: Text(
                    'send you password reset instrcutions',
                    style: YogaTextStyles.googleSanBlack161Medium,
                  ),
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex:1,
                        child: Container(
                          //width: 26,
                          height: 28,
                          padding: EdgeInsets.only(bottom: 12),
                          //alignment: Alignment.bottomLeft,
                          child: SvgPicture.asset(
                            'res/images/mail_icon.svg',
                            //width: 20,
                            //height: 20,
                            //color: YogaColors.black77,
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
                                  'Registered Email id',
                                  style: YogaTextStyles.montserratRegular12Black77,
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

              /// Button
              Padding(
                padding: EdgeInsets.only(top: 0),
                child: Container(
//                  decoration: BoxDecoration(
//                    border: Border(
//                    bottom: BorderSide(
//                        color: YogaColors.black244
//                    ),
//                    top: BorderSide(
//                        color: YogaColors.black244
//                    ),
//                    ),
//                  ),
                  child: Stack(
                    children: <Widget>[

                      /// Button Shadow
                      Container(
                        padding: EdgeInsets.only(top: 15),
//                        decoration: BoxDecoration(
//                          border: Border(
//                            bottom: BorderSide(
//                                color: YogaColors.red
//                            ),
//                            top: BorderSide(
//                                color: YogaColors.red
//                            ),
//                          ),
//                        ),
                        child: Image.asset('res/images/button_shadow_199.png'),
                      ),

                      /// Button Shape
                      Container(
                        child: SvgPicture.asset(
                          'res/images/button_shape_196.svg',
                        ),
                      ),

                      /// Button text
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.only(top: 36),
                        child: Text('Reset Password', style: YogaTextStyles.buttonText,),
                      ),


                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Container(
                  child: Text('Back to Login', style: YogaTextStyles.googleSanBold13Black77,),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}