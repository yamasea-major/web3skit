import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
  final double mHeadBgH = 140;

  @override
  Widget build(BuildContext context) {
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
                expandedHeight: SkCommonDef.mStatusBarH + mToolsBarH + mHeadBgH,
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    color: Colors.blueGrey,
                    child: Padding(
                      padding: EdgeInsets.only(
                          top: SkCommonDef.mStatusBarH + mToolsBarH),
                      child: WidgetUserInfo(),
                    ),
                  ),
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
