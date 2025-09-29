import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skit_app/sk_app.dart';
import 'package:skit_app/ui/sk_ui_def.dart';

import '../sk_ui_common_def.dart';

class SkLoginPage extends StatefulWidget {
  const SkLoginPage({super.key});

  @override
  State<SkLoginPage> createState() => _SkLoginPageState();
}

class _SkLoginPageState extends State<SkLoginPage> {
  //

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
        // color: Colors.amber,
        // appBar: AppBar(
        //   // centerTitle: true,
        //   // title: const Text('Login'),
        //   // backgroundColor: Colors.transparent,
        //   leading: IconButton(
        //     icon: const Icon(CupertinoIcons.back),
        //     onPressed: () {
        //       GoRouter.of(context).pop();
        //     },
        //   ),
        //   // actions: <Widget>[
        //   //   IconButton(
        //   //     icon: const Icon(Icons.search),
        //   //     onPressed: () {
        //   //       // Handle search button press
        //   //     },
        //   //   ),
        //   //   IconButton(
        //   //     icon: const Icon(Icons.more_vert),
        //   //     onPressed: () {
        //   //       // Handle more options button press
        //   //     },
        //   //   ),
        //   // ],
        //   backgroundColor: Colors.white,
        //   elevation: 4.0,
        // ),
        body: LayoutBuilder(
      builder: (context, constraints) {
        return Container(
          color: const Color.fromARGB(173, 27, 213, 10),
          width: constraints.maxWidth, // 使用最大宽度
          height: constraints.maxHeight, // 使用最大高度
          child: Stack(
            children: [
              Positioned(
                left: b16,
                top: SkCommonDef.mStatusBarH,
                child: IconButton(
                    icon: Icon(
                      CupertinoIcons.back,
                      size: s32,
                    ),
                    onPressed: () {
                      GoRouter.of(context).pop();
                    }),
              ),
              Positioned(
                left: b12,
                top: SkCommonDef.mStatusBarH + 140,
                child: Container(
                  width: SkCommonDef.mScreenW - b12 * 2,
                  color: Colors.red,
                  padding: EdgeInsets.only(
                      left: b20, right: b20, top: b20, bottom: b20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('登录',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: f28,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: b8),
                      Text('发现更多精彩剧集',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: f28,
                              fontWeight: FontWeight.bold)),
                      SizedBox(height: b24),
                      TextButton(
                        onPressed: () {
                          // Handle button press
                          // GoRouter.of(context).push('/login');
                          gSkApp.mLogicSys?.login();
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
                              const Color.fromARGB(
                                  255, 249, 169, 48)), // 背景色を青に設定
                          foregroundColor: WidgetStateProperty.all(
                              Colors.white), // テキストの色を白に設定
                          fixedSize: WidgetStateProperty.all(Size(300, 48)),
                        ),
                        child: Text(
                          '获取验证码',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: f16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: b24),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              icon: Icon(
                                CupertinoIcons.scissors,
                                size: s32,
                              ),
                              onPressed: () {
                                bool? ret = gSkApp.mLogicSys?.login();
                                if (ret == true) {
                                  GoRouter.of(context).pop();
                                }
                              }),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    )

// leadi
        );
  }

  //!end class
}
