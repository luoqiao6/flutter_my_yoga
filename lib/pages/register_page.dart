import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_my_yoga/utils/colors.dart';
import 'package:flutter_my_yoga/utils/textStyles.dart';


class RegisterPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _RegisterPageState();
  }
}

class _RegisterPageState extends State<RegisterPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: YogaColors.white,
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 40, right: 40),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 100),
                child: Container(
                  child: Text('Sign up', style: YogaTextStyles.avenirHeavyPurple,),
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
                            color: YogaColors.black77,
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
                            color: YogaColors.black77,
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

              /// Password confirm field
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
                            color: YogaColors.black77,
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
                                  'CONFIRM PASSWORD',
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


              /// Button
              Padding(
                padding: EdgeInsets.only(top: 24),
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
                        child: Text('sign up', style: YogaTextStyles.buttonText,),
                      ),


                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 70),
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