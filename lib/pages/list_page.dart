import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_my_yoga/utils/colors.dart';
import 'package:flutter_my_yoga/utils/textStyles.dart';
import 'package:flutter_my_yoga/widgets/card_widget.dart';

class ListPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {

    return _ListPage();
  }
}

class _ListPage extends State<ListPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        //backgroundColor: YogaColors.white,
        body: Stack(
          children: <Widget>[
            /// 顶部红色背景
            Container(
              height: 154,
              color: YogaColors.red,
            ),

            /// 卡片列表

            CustomScrollView(
              shrinkWrap: true,
              slivers: <Widget>[
                SliverPadding(
                  padding: EdgeInsets.only(left: 24, right: 24),
                  sliver: SliverList(
                    delegate: SliverChildBuilderDelegate(
                          (BuildContext context, int index) {

                        return CardWidget();
                      },

                      childCount: 10, ///
                    ),
                  ),
                ),
              ],
              controller: ScrollController(),
            ),


            /// Header
            Container(
              padding: EdgeInsets.only(top: 16),
              color: YogaColors.red,
              child: Stack(
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    child: Text('BUSINESS PROFILE', style: YogaTextStyles.montserratSemiBold17White,),
                  ),

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

                ],
              ),
            ),

          ],
        ),



    );
  }
}