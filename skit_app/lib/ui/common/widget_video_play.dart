import 'package:aliplayer_widget/aliplayer_widget_lib.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            buildVideoWidget(),
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

  Widget buildVideoWidget() {
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
              child:
              VideoPage(),
              // Text(
              //   'background with color',
              //   style: TextStyle(
              //       color: Colors.green,
              //       fontSize: f16.w,
              //       decoration: TextDecoration.none),
              // ),
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


class VideoPage extends StatefulWidget {
  @override
  _VideoPageState createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  late AliPlayerWidgetController _controller;

  @override
  void initState() {
    super.initState();
    // 1. 创建控制器
    _controller = AliPlayerWidgetController(context);

    // 2. 配置数据源
    final data = AliPlayerWidgetData.fromUrl(
      videoUrl: "https://gateway.pinata.cloud/ipfs/bafybeieyxopvquawudfpaca2cg67zmgqsurkpsqv6rvglqjrqxj7sriet4",
      coverUrl: "https://pic.616pic.com/bg_w1180/00/00/44/AWmPutVSXZ.jpg",
      videoTitle: "Example Video",
      // 你也可以设置 sceneType 等其他属性
    );
    _controller.configure(data);
  }

  @override
  void dispose() {
    // 释放播放器资源
    _controller.destroy();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("播放页面"),
      ),
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: AliPlayerWidget(
            _controller,
            overlays: [
              // 你可以在这里放自定义的 UI 覆盖层，比如按钮、进度条等
            ],
          ),
        ),
      ),
    );
  }
}
