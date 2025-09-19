import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../common/widget_video_play.dart';
import '../sk_ui_def.dart';

// playingpage

class SkPlayeringPage extends StatefulWidget {
  const SkPlayeringPage({super.key});

  @override
  State<SkPlayeringPage> createState() => _SkSkPlayeringeState();
}

class _SkSkPlayeringeState extends State<SkPlayeringPage> {
  double mStatusBarH = 0.0;

  final double mBottomH = 80;

  var children = <Widget>[];

  @override
  Widget build(BuildContext context) {
    //
    mStatusBarH = MediaQuery.of(context).padding.top;
    // 生成 6 个 Tab 页
    for (int i = 0; i < 6; ++i) {
      children.add(buildPlayInner());
    }
    //
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      // height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          buildPlayBody(),
          buildTopTools(),
        ],
      ),
      // buildBottom(),
    ));
  }

  Widget buildPlayBody() {
    return Positioned(
      top: 0,
      left: 0,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height - 200,
        color: Colors.amber,
        child: PageView(
          scrollDirection: Axis.vertical, // 滑动方向为垂直方向
          children: children,
        ),
      ),
    );
  }

  Widget buildPlayInner() {
    return WidgetVideoPlay();
    //     Container(
    //   width: 200, //MediaQuery.of(context).size.width,
    //   height: 400, //MediaQuery.of(context).size.height -mBottomH,
    //   color: Colors.blueGrey,
    //   // child: WidgetVideoPlay(),
    //   // Container(
    //   //   // width: MediaQuery.of(context).size.width,
    //   //   // height: MediaQuery.of(context).size.height - mBottomH,
    //   //   color: Colors.amber,
    //   //   child: WidgetVideoPlay(),
    //   // ),
    //   // // Expanded(child: WidgetVideoPlay()),
    //   // buildBottom(),
    // );
  }

  Widget buildTopTools() {
    return Positioned(
      left: 0,
      top: mStatusBarH + b12,
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
              GestureDetector(
                  onTap: () {
                    //
                    GoRouter.of(context).pop();
                  },
                  child: Icon(
                    color: Colors.white,
                    CupertinoIcons.back,
                    size: s24,
                  )),
              SizedBox(
                width: b4,
              ),
              Text("第24集",
                  style: TextStyle(
                      fontSize: f14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
              Expanded(child: SizedBox()),
              GestureDetector(
                onTap: () {
                  //
                  print('speed');
                  // GoRouter.of(context).pop();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.speedometer,
                      color: Colors.white,
                      size: s24,
                    ),
                    SizedBox(
                      width: b4,
                    ),
                    Text("倍速",
                        style: TextStyle(
                            fontSize: f14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(
                width: b12,
              ),
              Icon(
                CupertinoIcons.bars,
                color: Colors.white,
                size: s24,
              ),
              SizedBox(
                width: b12,
              ),
            ],
          )),
    );
  }

  Widget buildBottom() {
    return Positioned(
        bottom: 0,
        left: 0,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: mBottomH,
          color: Colors.black,
        ));
  }

  //!end class
}
