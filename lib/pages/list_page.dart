import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_my_yoga/utils/colors.dart';
//import 'package:flutter_my_yoga/utils/textStyles.dart';
import 'package:flutter_my_yoga/widgets/card_widget.dart';
import 'package:flutter_my_yoga/widgets/yoga_sliver_app_bar.dart';

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

            CustomScrollView(
              //shrinkWrap: true,
              slivers: <Widget>[

                YogaSliverAppBar(
                  pinned: false,
                  floating: true,
                  maxHeight: 60,
                ),

                /// 卡片列表
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

          ],
        ),

    );
  }
}