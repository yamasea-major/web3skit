import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../sk_ui_common_def.dart';
import '../sk_ui_def.dart';

// userinfo widget

class WidgetUnlogin extends StatefulWidget {
  const WidgetUnlogin({super.key});

  static final double innerHeight = 80;

  @override
  State<WidgetUnlogin> createState() => _WidgetUnloginState();
}

class _WidgetUnloginState extends State<WidgetUnlogin> {
  //
  @override
  Widget build(BuildContext context) {
    //
    return Container(
      width: SkCommonDef.mScreenW,
      height: WidgetUnlogin.innerHeight,
      color: const Color.fromARGB(244, 255, 7, 185),
      child: Stack(
        children: [
          Positioned(
            left: b12.w,
            top: 0,
            child: Text("Welcome to SKIT",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: f18)),
          ),
          Positioned(
            left: b12.w,
            top: 28.w,
            child: TextButton(
              onPressed: () {
                // Handle button press
                GoRouter.of(context).push('/login');
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
                    EdgeInsets.only(left: b16.w, right: b16.w)),
                backgroundColor: WidgetStateProperty.all(
                    const Color.fromARGB(255, 249, 169, 48)), // 背景色を青に設定
                foregroundColor:
                    WidgetStateProperty.all(Colors.white), // テキストの色を白に設定
                // maximumSize: WidgetStateProperty.all(Size(100, 80)),
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
