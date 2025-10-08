import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../datalayer/sk_data_chunk.dart';
import '../../frame/sk_notifier.dart';
import '../../notifiers/sk_mult_skits_list_notifier.dart';
import '../../notifiers/sk_skit_info_notifier.dart';
import '../../sk_app.dart';
import '../common/widget_social_info.dart';
import '../common/widget_video_info.dart';
import '../common/widget_video_play.dart';
import '../sk_ui_common_def.dart';
import '../sk_ui_def.dart';

class SkInHomePage extends StatefulWidget {
  const SkInHomePage({super.key});

  @override
  State<SkInHomePage> createState() => _SkInHomePageState();
}

class _SkInHomePageState extends State<SkInHomePage> {
  List<int> top = <int>[];
  List<int> bottom = <int>[0];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //
    var children = <Widget>[];
    //
    SkNotifier? mutlSkitNotifier =
        gSkApp.mSkNotiferSys?.getSkNotifier('SkMultSkitsListNotifier');
    if (mutlSkitNotifier != null &&
        mutlSkitNotifier is SkMultSkitsListNotifier) {
      // mIsLogin = loginNotifier.mIsLogin;
      for (int i = 0; i < mutlSkitNotifier.dataList.length; ++i) {
        children.add(buildHomePlay(context, mutlSkitNotifier.dataList[i]));
      }
    } else {
      for (int i = 0; i < 10; ++i) {
        children.add(buildHomePlay(context, SkDataChunk()));
      }
    }

    return SizedBox(
        child: Stack(
      children: [
        Positioned(
            child: PageView(
          scrollDirection: Axis.vertical, // 滑动方向为垂直方向
          children: children,
        )),
        Positioned(
          right: b24,
          top: SkCommonDef.mStatusBarH + b12,
          child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                //
                GoRouter.of(context).push('/search');
              },
              child: Icon(
                CupertinoIcons.search,
                color: Colors.white,
                size: s24.w,
              )),
        ),
      ],
    ));
    //
  }

  Widget buildHomePlay(BuildContext context, SkDataChunk dataChunk) {
    return Container(
        color: Colors.red,
        child: Stack(
          children: [
            WidgetVideoPlay(),
            Positioned(right: 10.w, bottom: 140.w, child: WidgetSocialInfo()),
            Positioned(left: 10.w, bottom: 140.w, child: WidgetVideoInfo()),
            Positioned(
              left: 0.0,
              bottom: 80.0,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  //
                  GoRouter.of(context).push('/playing');
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 46.w,
                  color: const Color.fromARGB(60, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: b12.w,
                      ),
                      Icon(
                        CupertinoIcons.arrowtriangle_right_circle,
                        color: Colors.white,
                        size: s24.w,
                      ),
                      SizedBox(
                        width: b4.w,
                      ),
                      Text("VIEW FULL CONTENT",
                          style: TextStyle(
                              fontSize: f14.w,
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                      Expanded(child: SizedBox()),
                      Icon(
                        CupertinoIcons.forward,
                        color: Colors.white,
                        size: s24.w,
                      ),
                      SizedBox(
                        width: b12.w,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  //!end class
}
