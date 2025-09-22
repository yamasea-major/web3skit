import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../common/widget_function_bar.dart';
import '../common/widget_unlogin.dart';
import '../common/widget_user_info.dart';
import '../sk_ui_common_def.dart';
import '../sk_ui_def.dart';

class SkMyPage extends StatefulWidget {
  const SkMyPage({super.key});

  @override
  State<SkMyPage> createState() => _SkMyPageState();
}

class _SkMyPageState extends State<SkMyPage> {
  List<int> top = <int>[];
  List<int> bottom = <int>[0];
  List<String> mTabs = ['历史', '收藏', '点赞', '动态'];
  final double mToolsBarH = 20;
  double mHeadBgH = 0;
  //
  bool mIsLogin = false;

  @override
  Widget build(BuildContext context) {
    //
    // 100 info height
    // 80 function height
    // 20 bottom distance
    //

    mHeadBgH = SkCommonDef.mStatusBarH + mToolsBarH + 100 + 80 + 20;
    //
    return DefaultTabController(
      length: 4,
      child: Stack(
        children: [
          CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                pinned: true,
                floating: true,
                snap: false,
                collapsedHeight: SkCommonDef.mStatusBarH + mToolsBarH + s12,
                expandedHeight: mHeadBgH,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                      color: Colors.blueGrey,
                      width: SkCommonDef.mScreenW,
                      height: mHeadBgH,
                      child: Stack(
                        children: [
                          Container(
                              width: SkCommonDef.mScreenW,
                              height: mHeadBgH,
                              color: const Color.fromARGB(255, 10, 228, 79)),
                          Positioned(
                              top: SkCommonDef.mStatusBarH + mToolsBarH,
                              child: buildHeadWidget(context)),
                          Positioned(
                              top: SkCommonDef.mStatusBarH + mToolsBarH + 80,
                              child: WidgetFunctionBar()),
                        ],
                      )),
                ),
                bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(60),
                    child: TabBar(
                        tabs: mTabs
                            .map((String name) => Tab(text: name))
                            .toList())),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    // color: Colors.blue[200 + top[index] % 4 * 100],
                    // height: 100 + top[index] % 4 * 20.0,
                    child: Text('Item1'),
                  );
                }, childCount: 40),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    // color: Colors.blue[200 + bottom[index] % 4 * 100],
                    // height: 100 + bottom[index] % 4 * 20.0,
                    child: Text('Item2'),
                  );
                }, childCount: 40),
              ),
            ],
          ),
          Positioned(
              top: SkCommonDef.mStatusBarH,
              right: 0,
              child: buildHeaderTools(context)),
        ],
      ),
    );
  }

  Widget buildHeadWidget(BuildContext context) {
    if (mIsLogin == false) return WidgetUnlogin();
    return WidgetUserInfo();
  }

  Widget buildHeaderTools(BuildContext context) {
    return Container(
      // width: 100,
      // height: 100,
      color: Colors.red,
      child: Row(
        children: [
          IconButton(
              onPressed: () {
                //
                GoRouter.of(context).push('/setting');
              },
              icon: Icon(
                CupertinoIcons.gear,
                color: Colors.white,
                size: s16,
              )),
        ],
      ),
    );
  }

  //!end class
}
