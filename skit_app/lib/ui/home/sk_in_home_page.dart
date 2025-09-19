import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../common/widget_social_info.dart';
import '../common/widget_video_info.dart';
import '../common/widget_video_play.dart';
import '../sk_ui_def.dart';

class SkInHomePage extends StatefulWidget {
  const SkInHomePage({super.key});

  @override
  State<SkInHomePage> createState() => _SkInHomePageState();
}

class _SkInHomePageState extends State<SkInHomePage> {
  List<int> top = <int>[];
  List<int> bottom = <int>[0];

  @override
  Widget build(BuildContext context) {
    //
    double mStatusBarH = MediaQuery.of(context).padding.top;
    //
    var children = <Widget>[];
    // 生成 6 个 Tab 页
    for (int i = 0; i < 6; ++i) {
      children.add(buildHomePlay());
    }

    return SizedBox(
        // color: Colors.blue,
        // width: 375,
        // height: 300,
        child: Stack(
          children: [
            Positioned(
                child: PageView(
              scrollDirection: Axis.vertical, // 滑动方向为垂直方向
              children: children,
            )),
            Positioned(
              right: b24,
              top: mStatusBarH + b12,
              child: GestureDetector(
                  onTap: () {
                    //
                    GoRouter.of(context).push('/search');
                  },
                  child: Icon(
                    CupertinoIcons.search,
                    size: s24,
                  )),
            ),
          ],
        ));
  }

  Widget buildHomePlay() {
    return Container(
        color: Colors.red,
        child: Stack(
          children: [
            WidgetVideoPlay(),
            Positioned(right: 10.0, bottom: 140.0, child: WidgetSocialInfo()),
            Positioned(left: 10.0, bottom: 140.0, child: WidgetVideoInfo()),
            Positioned(
              left: 10.0,
              bottom: 90.0,
              child: GestureDetector(
                onTap: () {
                  //
                },
                child: Container(
                  width: 375,
                  height: 40,
                  color: const Color.fromARGB(97, 251, 250, 250),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("abc",
                          style: TextStyle(
                            fontSize: f32,
                            // color: this.makeStickyHeaderTitleColor(
                            //     shrinkOffset), // Color(0xFFFF542C)),
                          )),
                      Text("left"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  //!end class
}
