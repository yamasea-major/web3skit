import 'package:flutter/cupertino.dart';

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
        return CupertinoTabView(
          builder: (BuildContext context) {
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text('Page 1 of tab $index'),
              ),
              child: Center(), // 这里有省略一些代码
            );
          },
        );
      },
    );
  }
}
