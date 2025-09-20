import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../sk_ui_def.dart';

class WidgetVideoPlay extends StatefulWidget {
  const WidgetVideoPlay({super.key});

  @override
  State<WidgetVideoPlay> createState() => _WidgetVideoPlayState();
}

class _WidgetVideoPlayState extends State<WidgetVideoPlay>
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

    curve =
        CurvedAnimation(parent: animationController, curve: Curves.bounceInOut);
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
            buildVideoWidget(),
            // video mask
            buildMask(),
            // test btn
            Positioned(
              top: 100,
              left: 100,
              child: TextButton(
                child: Text("放大"),
                onPressed: () {
                  animationController?.forward();
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

  Widget buildVideoWidget() {
    return ScaleTransition(
        scale: animation,
        alignment: Alignment.center,
        child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.amber,
            child: Center(
              child: Text(
                'background with color',
                style: TextStyle(
                    color: Colors.green,
                    fontSize: f16,
                    decoration: TextDecoration.none),
              ),
            )));
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
