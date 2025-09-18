import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skit_app/ui/home/sk_in_home_page.dart';
import 'package:skit_app/ui/reward/sk_reward_page.dart';
import 'package:skit_app/ui/skit/sk_skit_page.dart';

import 'mypage/sk_my_page.dart';

class SkHomeTabPage extends StatefulWidget {
  @override
  _SkHomeTabPageState createState() => _SkHomeTabPageState();
}

class _SkHomeTabPageState extends State<SkHomeTabPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
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
                return CupertinoPageScaffold(
                  // navigationBar: CupertinoNavigationBar(
                  //   middle: Text('Page 1 of tab $index'),
                  // ),
                  child: SafeArea(
                    child: SkMyPage(),
                  ),
                );
              },
            );
            break;
        }
        return returnValue;
      },
    );
  }
}

// Widget _buildScrollableContent(int index) {
//   return ListView.builder(
//     itemCount: 20, // 例如，有20个项目可以滚动。
//     itemBuilder: (context, i) {
//       return ListTile(
//           title: Text('Item $i in Tab $index')); // 显示不同的内容或相同的，取决于你的需求。
//     },
//   );
// }
