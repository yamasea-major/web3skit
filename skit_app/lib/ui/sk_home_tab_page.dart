import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skit_app/ui/home/sk_in_home_page.dart';
import 'package:skit_app/ui/reward/sk_reward_page.dart';
import 'package:skit_app/ui/skit/sk_skit_page.dart';

import 'mypage/sk_my_page.dart';
import 'sk_ui_common_def.dart';
import 'sk_ui_def.dart';

class SkHomeTabPage extends StatefulWidget {
  const SkHomeTabPage({super.key});

  @override
  _SkHomeTabPageState createState() => _SkHomeTabPageState();
}

class _SkHomeTabPageState extends State<SkHomeTabPage> {
  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
        body: CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: ('首页')),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.arrowtriangle_right_circle),
              label: ('剧场')),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.bitcoin_circle), label: ('福利')),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.profile_circled), label: ('我的')),
        ],
      ),
      tabBuilder: (BuildContext context, int index) {
        late final CupertinoTabView returnValue;
        switch (index) {
          case 0:
            returnValue = CupertinoTabView(
              builder: (BuildContext context) {
                return SkInHomePage();
              },
            );
            break;
          case 1:
            returnValue = CupertinoTabView(
              builder: (BuildContext context) {
                return CupertinoPageScaffold(
                  child: SkSkitPage(),
                );
              },
            );
            break;
          case 2:
            returnValue = CupertinoTabView(
              builder: (BuildContext context) {
                return CupertinoPageScaffold(
                  navigationBar: CupertinoNavigationBar(
                    middle: Text('Page 1 of tab $index'),
                  ),
                  child: SkRewardPage(),
                );
              },
            );
            break;
          case 3:
            returnValue = CupertinoTabView(
              builder: (BuildContext context) {
                return AnnotatedRegion<SystemUiOverlayStyle>(
                    value: SystemUiOverlayStyle.light,
                    child: CupertinoPageScaffold(
                      // navigationBar: CupertinoNavigationBar(
                      //   middle: Text('Page 1 of tab $index'),
                      // ),
                      backgroundColor: Colors.transparent,
                      child: //SafeArea(child: SkMyPage()),
                          MediaQuery.removePadding(
                        context: context,
                        removeTop: true,
                        child: AnnotatedRegion<SystemUiOverlayStyle>(
                          value: SystemUiOverlayStyle
                              .light, // 或者使用SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light); 如果你需要全局设置的话。
                          child: SkMyPage(),
                        ),
                      ),
                    ));
              },
            );
            break;
        }
        return returnValue;
      },
    ));
  }

  //!end class
}
