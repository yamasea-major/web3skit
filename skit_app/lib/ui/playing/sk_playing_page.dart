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

  final double mBottomH = 88;

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
        body: ConstrainedBox(
      constraints: BoxConstraints.expand(),
      // width: MediaQuery.of(context).size.width,
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
    return Positioned.fill(
      top: 0,
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
    return Stack(children: [
      Positioned.fill(bottom: mBottomH, child: WidgetVideoPlay()),
      buildBottom(),
    ]);
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
                child: Row(
                  children: [
                    Icon(
                      color: Colors.white,
                      CupertinoIcons.back,
                      size: s24,
                    ),
                    SizedBox(
                      width: b4,
                    ),
                    Text("第24集",
                        style: TextStyle(
                            fontSize: f14,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
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
                      CupertinoIcons.escape, //speedometer,
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
                CupertinoIcons.ellipsis_vertical,
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
          child: Padding(
              padding: EdgeInsets.only(left: b20, right: b20, top: b12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: GestureDetector(
                        onTap: () {
                          //
                          print('show all videos');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 57, 57, 57),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6))),
                          height: 46,
                          child: Row(
                            children: [
                              SizedBox(width: b12),
                              Text("选集·全80集·免费观看",
                                  style: TextStyle(
                                      fontSize: f14,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold)),
                              Expanded(child: SizedBox()),
                              Icon(
                                CupertinoIcons.projective,
                                color: Colors.white,
                                size: s20,
                              ),
                              SizedBox(width: b12),
                            ],
                          ),
                        )),
                  ),
                  SizedBox(width: b12),
                  IconButton(
                      onPressed: () {
                        //
                      },
                      icon: Icon(
                        CupertinoIcons.fullscreen,
                        color: Colors.white,
                        size: s24,
                      ))
                ],
              )),
        ));
  }

  //!end class
}
