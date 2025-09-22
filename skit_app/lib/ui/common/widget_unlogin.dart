import 'package:avatar_plus/avatar_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sk_ui_common_def.dart';
import '../sk_ui_def.dart';

// userinfo widget

class WidgetUnlogin extends StatefulWidget {
  const WidgetUnlogin({super.key});

  @override
  State<WidgetUnlogin> createState() => _WidgetUnloginState();
}

class _WidgetUnloginState extends State<WidgetUnlogin> {
  Color mStarColor = Colors.white;
  Color mChatColor = Colors.white;
  Color mHeartColor = Colors.white;
  bool mStarFlag = false;
  bool mHeartFlag = false;

  @override
  Widget build(BuildContext context) {
    const double topBorder = 14;
    return Container(
      width: SkCommonDef.mScreenW,
      height: 80,
      color: const Color.fromARGB(0, 255, 7, 185),
      child: Stack(
        children: [
          Positioned(
            left: b12,
            top: topBorder,
            child: Text("Welcome to SKIT",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: f18)),
          ),
          Positioned(
            left: b12,
            top: topBorder + 20,
            child: TextButton(
              onPressed: () {
                // Handle button press
              },
              style: ButtonStyle(
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(r12),
                )),
                // side: WidgetStateProperty.all(BorderSide(
                //   color: Colors.yellow,
                //   width: 0.67,
                // )),
                padding: WidgetStatePropertyAll(
                    EdgeInsets.only(left: 16, right: 16)),
                backgroundColor: WidgetStateProperty.all(
                    const Color.fromARGB(255, 249, 169, 48)), // 背景色を青に設定
                foregroundColor:
                    WidgetStateProperty.all(Colors.white), // テキストの色を白に設定
              ),
              child: Text(
                '立即登录',
                style: TextStyle(
                    // color: Colors.white,
                    fontSize: f14,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  //!end class
}
