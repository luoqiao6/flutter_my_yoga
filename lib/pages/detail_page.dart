import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_my_yoga/utils/colors.dart';
import 'package:flutter_my_yoga/utils/textStyles.dart';

class DetailPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _DetailPageState();
  }
}

class _DetailPageState extends State<DetailPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: YogaColors.white,
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              /// 顶部红色背景
              Container(
                height: 154,
                color: YogaColors.red,
              ),

              /// Header
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 24,),
                      child: Container(
                        height: 50,
                        child: SvgPicture.asset(
                          'res/images/menu_icon.svg',
                          height: 20,
                          color: YogaColors.white,
                        ),
                      ),
                    ),

                    Container(
                      alignment: Alignment.center,
                      height: 50,
                      child: Text('BUSINESS PROFILE', style: YogaTextStyles.montserratSemiBold17White,),
                    ),

                  ],
                ),
              ),

              /// 圆角矩形
              Padding(
                padding: EdgeInsets.only(top: 120, left: 24, right: 24),
                child: Container(
                  height: 200,
                  //padding: EdgeInsets.only(left: 24, right: 24),
                  //color: YogaColors.white,
                  decoration: BoxDecoration(
                    color: YogaColors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(33.0),
                      topRight: Radius.circular(33.0),
                    ),
                  ),
                ),
              ),

              /// 黄色圆
              Padding(
                padding: EdgeInsets.only(top: 70),
                child: Container(
                  height: 201,
                  decoration: BoxDecoration(
                    color: YogaColors.yellow,
                    shape: BoxShape.circle,
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 72, left: 6),
                child: Container(
                  child: Image.asset('res/images/img_shadow.png'),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 70, left: 6),
                child: Container(
                  child: Image.asset('res/images/img.png'),
                ),
              ),

            ],
          ),

          Padding(
            padding: EdgeInsets.only(left: 50, right: 50, top: 24),
            child: Column(
              children: <Widget>[
                /// 名称和右边的图标
                Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text('Moon yoga Clacess ', style: YogaTextStyles.montserratSemiBold18Block77,),
                    ),


                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.topRight,
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            Container(
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: YogaColors.black230,
                                shape: BoxShape.circle,
                              ),
                            ),
                            SvgPicture.asset(
                              'res/images/edit_icon.svg',
                              height: 13,
                              //width: 11.67,
                              //color: YogaColors.white,
                            ),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),


                Padding(
                  padding: EdgeInsets.only(top: 20),
                ),

                /// 地址、电话、时间、价格等详细信息
                Row(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    
                    /// 地址、电话 等信息
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[

                        Row(
                          children: <Widget>[
                            SvgPicture.asset(
                              'res/images/location_icon.svg',
                              //height: 13,
                              width: 9.14,
                              //color: YogaColors.white,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text('Tijuana, B.C., Mexico', style: YogaTextStyles.googleSansMedium11Black148,),
                            ),
                          ],
                        ),

                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                        ),

                        Row(
                          children: <Widget>[
                            SvgPicture.asset(
                              'res/images/phone_icon.svg',
                              //height: 13,
                              width: 9.14,
                              //color: YogaColors.white,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text('+1 619-819-9442', style: YogaTextStyles.googleSansMedium11Black148,),
                            ),
                          ],
                        ),

                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                        ),

                        Row(
                          children: <Widget>[
                            SvgPicture.asset(
                              'res/images/mail_icon.svg',
                              //height: 13,
                              width: 11,
                              color: YogaColors.black77,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text('+1 619-819-9442', style: YogaTextStyles.googleSansMedium11Black148,),
                            ),
                          ],
                        ),

                        Padding(
                          padding: EdgeInsets.only(bottom: 20),
                        ),

                        Row(
                          children: <Widget>[
                            SvgPicture.asset(
                              'res/images/clock_icon.svg',
                              //height: 13,
                              width: 11,
                              //color: YogaColors.white,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text('9AM - 7PM', style: YogaTextStyles.googleSanBold11Black77,),
                            ),
                          ],
                        ),

                      ],
                    ),


                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.topRight,
                        child: Text('\$45', style: YogaTextStyles.googleSanBold40Black77,),
                      ),
                    ),

                    
                  ],
                ),


                /// Button
                Padding(
                  padding: EdgeInsets.only(top: 6),
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
                            'res/images/button_shape_271.svg',
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

              ],
            ),
          ),



        ],
      )



    );
  }
}

