import 'package:avatar_plus/avatar_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sk_ui_common_def.dart';
import '../sk_ui_def.dart';

// userinfo widget

class WidgetUserInfo extends StatefulWidget {
  const WidgetUserInfo({super.key});

  @override
  State<WidgetUserInfo> createState() => _WidgetUserInfoState();
}

class _WidgetUserInfoState extends State<WidgetUserInfo> {
  Color mStarColor = Colors.white;
  Color mChatColor = Colors.white;
  Color mHeartColor = Colors.white;
  bool mStarFlag = false;
  bool mHeartFlag = false;

  @override
  Widget build(BuildContext context) {
    const double topBorder = 0;
    return Container(
      width: SkCommonDef.mScreenW,
      height: 80,
      color: Colors.amber,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: topBorder,
            child: AvatarPlus(
              "jonny",
              height: 64,
              width: 64,
            ),
          ),
          Positioned(
              left: 70,
              top: topBorder,
              child: Text("XXXname",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: f20))),
          Positioned(
              left: 70,
              top: topBorder + 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("200",
                      style: TextStyle(
                          fontWeight: FontWeight.w100, fontSize: f12)),
                  SizedBox(width: b4),
                  Text("Follow",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: f12)),
                  SizedBox(width: b8),
                  Text("1932",
                      style: TextStyle(
                          fontWeight: FontWeight.w100, fontSize: f12)),
                  SizedBox(width: b4),
                  Text("Fans",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: f12)),
                  SizedBox(width: b8),
                  Text("19987",
                      style: TextStyle(
                          fontWeight: FontWeight.w100, fontSize: f12)),
                  SizedBox(width: b4),
                  Text("Right",
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: f12)),
                ],
              ))
        ],
      ),
    );
  }

  //!end class
}
