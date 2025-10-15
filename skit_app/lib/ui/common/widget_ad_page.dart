import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../sk_ui_def.dart';

class WidgetAdPage extends StatefulWidget {
  const WidgetAdPage({super.key});

  @override
  State<WidgetAdPage> createState() => _WidgetAdPageState();
}

class _WidgetAdPageState extends State<WidgetAdPage>
    with SingleTickerProviderStateMixin {
  bool mShowMask = false;
  //
  late Animation<double> animation;
  late AnimationController animationController;
  late CurvedAnimation curve;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      duration: Duration(milliseconds: 300),
      vsync: this,
    );
    //
    curve =
        CurvedAnimation(parent: animationController, curve: Curves.bounceInOut);
    //
    animation = Tween(
      begin: 1.0,
      end: 0.3,
    ).animate(curve);
  }

  @override
  Widget build(BuildContext context) {
    //
    int a = 0;
    //
    return Container(
        // constraints: BoxConstraints.expand(),
        color: Colors.black,
        child: Stack(
          children: [
            // video play
            buildWebviewWidget(context, 'www.google.com'),
            // video mask
            buildMask(),
            // test btn
            Positioned(
              top: 100.w,
              left: 100.w,
              child: TextButton(
                child: Text("缩小"),
                onPressed: () {
                  animationController?.forward();
                },
              ),
            ),
            Positioned(
              top: 100.w,
              left: 200.w,
              child: TextButton(
                child: Text("返回"),
                onPressed: () {
                  animationController?.reverse();
                },
              ),
            ),
          ],
        ));

    // @override
    // void dispose() {
    //   super.dispose();
    //   var a = 1;
    // }

    //!end class
  }

  Widget buildWebviewWidget(BuildContext context, String url) {
    return AnimatedBuilder(
      // scale: animation,
      // alignment: Alignment.center,
      animation: animation,
      builder: (context, child) {
        return Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.amber,
            child: Center(
              child: Text(
                'background with color',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: f16.w,
                    decoration: TextDecoration.none),
              ),
            ));
      },
    );
  }

  Widget buildControlWidget() {
    if (mShowMask) {
      return Container(
        color: Color.fromARGB(14, 0, 0, 0),
      );
    }
    return SizedBox();
  }

  buildMask() {
    if (mShowMask) {
      return Container(
        color: Color.fromARGB(14, 0, 0, 0),
      );
    }
    return SizedBox();
  }

  //!end class
}
