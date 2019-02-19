import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_my_yoga/utils/colors.dart';
import 'package:flutter_my_yoga/utils/textStyles.dart';


class YogaSliverAppBar extends StatefulWidget {
  final bool pinned;
  final bool floating;
  final double minHeight;
  final double maxHeight;

  YogaSliverAppBar({
    this.pinned = true,
    this.floating = true,
    this.minHeight = 60.0,
    this.maxHeight = 200.0,
  });

  @override
  createState() {
    return _YogaSliverAppBarState();
  }
}

class _YogaSliverAppBarState extends State<YogaSliverAppBar> {

  @override
  void didUpdateWidget(YogaSliverAppBar oldWidget) {
    print('update');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    print('change');
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {

    return SliverPersistentHeader(
      pinned: widget.pinned,
      floating: widget.floating,

      delegate: _SliverAppBarDelegate(
        minHeight: widget.minHeight,
        maxHeight: widget.maxHeight,

        child: Container(
          padding: EdgeInsets.only(top: 16),
          color: YogaColors.red,
          child: Stack(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 50,
                //color: YogaColors.red,
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
      ),

    );

  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });
  final double minHeight;
  final double maxHeight;
  final Widget child;
  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => math.max(maxHeight, minHeight);
  @override
  Widget build(
      BuildContext context,
      double shrinkOffset,
      bool overlapsContent)
  {
    return new SizedBox.expand(child: child);
  }
  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}