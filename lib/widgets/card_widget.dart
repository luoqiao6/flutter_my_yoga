import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_my_yoga/utils/colors.dart';
import 'package:flutter_my_yoga/utils/textStyles.dart';

class CardWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return /// 一个卡片
      Padding(
        padding: EdgeInsets.only(bottom: 11),
        child: Container(
          width: 328,
          height: 129,
          padding: EdgeInsets.only(left: 12,right: 12,top: 6,bottom: 7),
          decoration: BoxDecoration(
            color: YogaColors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(
                  12
              ),
            ),
            boxShadow: [
              BoxShadow(
                color: YogaColors.black5,
                blurRadius: 20.0,
              ),
            ],
          ),
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,

            children: <Widget>[

              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Container(
                  width:64,
                  height: 64,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: YogaColors.lightBlue,
                    shape: BoxShape.circle,
                  ),
                  child: Text('M'),
                ),
              ),


              /// 地址、电话 等信息
              ///
              Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[

                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text('Moon yoga Clacess ', style: YogaTextStyles.googleSanRegular14Black14,),
                    ),

                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                    ),

                    Row(
                      children: <Widget>[

                        SvgPicture.asset(
                          'res/images/location_icon.svg',
                          //height: 13,
                          width: 9.14,
                          color: YogaColors.lightPurple,
                        ),

                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text('Tijuana, B.C., Mexico', style: YogaTextStyles.googleSansMedium10Black148,),
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                    ),

                    Row(
                      children: <Widget>[

                        SvgPicture.asset(
                          'res/images/phone_icon.svg',
                          //height: 13,
                          width: 9.14,
                          color: YogaColors.lightPurple,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text('+1 619-819-9442', style: YogaTextStyles.googleSansMedium10Black148,),
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                    ),

                    Row(
                      children: <Widget>[
                        SvgPicture.asset(
                          'res/images/mail_icon.svg',
                          //height: 13,
                          width: 11,
                          color: YogaColors.lightPurple,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text('+1 619-819-9442', style: YogaTextStyles.googleSansMedium10Black148,),
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(bottom: 5),
                    ),

                    Row(
                      children: <Widget>[
                        SvgPicture.asset(
                          'res/images/clock_icon.svg',
                          //height: 13,
                          width: 11,
                          color: YogaColors.lightPurple,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text('9AM - 7PM', style: YogaTextStyles.googleSanBold10Black77,),
                        ),
                      ],
                    ),

                  ],
                ),

              ),


              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    /// 右上角图标
                    Stack(
                      alignment: Alignment.center,
                      children: <Widget>[
                        Container(
                          width: 22,
                          height: 22,
                          decoration: BoxDecoration(
                            color: YogaColors.black230,
                            shape: BoxShape.circle,
                          ),
                        ),
                        SvgPicture.asset(
                          'res/images/edit_icon.svg',
                          height: 8.65,
                          //width: 11.67,
                          //color: YogaColors.white,
                        ),
                      ],
                    ),

                    Padding(
                      padding: EdgeInsets.only(top: 6, bottom: 14),
                      child: Container(
                        alignment: Alignment.topRight,
                        child: Text('\$45', style: YogaTextStyles.montserratSemiBold21Purple,),
                      ),
                    )
                    ,

                    Container(
                      width: 77.36,
                      height: 27,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: YogaColors.green,
                          borderRadius: BorderRadius.all(
                              Radius.circular(14)
                          )
                        //shape: BoxShape.circle
                      ),
                      child: Text('Book Now', style: YogaTextStyles.montserratSemiBold10White,),
                    )

                  ],
                ),
              ),


            ],
          ),
        ),
      );
  }
}