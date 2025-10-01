import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../common/widget_social_info.dart';
import '../common/widget_video_info.dart';
import '../common/widget_video_play.dart';
import '../dialog/bottomsheet_share.dart';
import '../dialog/bottomsheet_speed.dart';
import '../sk_ui_common_def.dart';
import '../sk_ui_def.dart';

// playingpage

class SkPlayeringPage extends StatefulWidget {
  const SkPlayeringPage({super.key});

  @override
  State<SkPlayeringPage> createState() => _SkSkPlayeringeState();
}

class _SkSkPlayeringeState extends State<SkPlayeringPage> {
  final double mBottomH = 88;

  var children = <Widget>[];

  bool mShowInfo = true;

  @override
  Widget build(BuildContext context) {
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
          buildSocialInfo(),
          buildVideoInfo(),
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
      top: SkCommonDef.mStatusBarH + b12.w,
      child: Container(
          width: MediaQuery.of(context).size.width,
          height: 46.w,
          color: const Color.fromARGB(0, 0, 0, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: b12.w,
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  //
                  GoRouter.of(context).pop();
                },
                child: Row(
                  children: [
                    Icon(
                      color: Colors.white,
                      CupertinoIcons.back,
                      size: s24.w,
                    ),
                    SizedBox(
                      width: b4.w,
                    ),
                    Text("第24集",
                        style: TextStyle(
                            fontSize: f14.w,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Expanded(child: SizedBox()),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () async {
                  //
                  print('speed');
                  // GoRouter.of(context).pop();
                  int? selectedIndex = await bottomSheetSpeed(context);
                  print("自定义底部弹层：选中了第$selectedIndex个选项");
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.escape, //speedometer,
                      color: Colors.white,
                      size: s20.w,
                    ),
                    SizedBox(
                      width: b8.w,
                    ),
                    Text("倍速",
                        style: TextStyle(
                            fontSize: f14.w,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(
                width: b12.w,
              ),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () async {
                  //
                  print('setting');
                  // GoRouter.of(context).pop();
                  int? selectedIndex = await bottomSheetShare(context);
                  print("自定义底部弹层：选中了第$selectedIndex个选项");
                },
                child: SizedBox(
                  width: 46.w,
                  height: 46.w,
                  // color: Colors.red,
                  child: Icon(
                    CupertinoIcons.ellipsis_vertical,
                    color: Colors.white,
                    size: s24.w,
                  ),
                ),
              ),
              // SizedBox(
              //   width: b12.w,
              // ),
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
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          //
                          print('show all videos');
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 57, 57, 57),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(6))),
                          height: 46.w,
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
                        setState(() {
                          mShowInfo = !mShowInfo;
                        });
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

  Widget buildSocialInfo() {
    if (mShowInfo) {
      return Positioned(
          right: 10.0, bottom: mBottomH + b20, child: WidgetSocialInfo());
    }
    return SizedBox();
  }

  Widget buildVideoInfo() {
    if (mShowInfo) {
      return Positioned(
          left: 10.0, bottom: mBottomH + b20, child: WidgetVideoInfo());
    }
    return SizedBox();
  }

  //!end class
}
