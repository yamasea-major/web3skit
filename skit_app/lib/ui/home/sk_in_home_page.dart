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
    //
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
              left: 0.0,
              bottom: 80.0,
              child: GestureDetector(
                onTap: () {
                  //
                  GoRouter.of(context).push('/playing');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 46,
                  color: const Color.fromARGB(60, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: b12,
                      ),
                      Icon(
                        CupertinoIcons.arrowtriangle_right_circle,
                        color: Colors.white,
                        size: s24,
                      ),
                      SizedBox(
                        width: b4,
                      ),
                      Text("VIEW FULL CONTENT",
                          style: TextStyle(
                              fontSize: f14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Expanded(child: SizedBox()),
                      Icon(
                        CupertinoIcons.forward,
                        color: Colors.white,
                        size: s24,
                      ),
                      SizedBox(
                        width: b12,
                      ),
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
