import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skit_app/ui/common/widget_function_bar.dart';

import '../common/widget_user_info.dart';
import 'sk_my_page_header.dart';

class SkMyPage extends StatefulWidget {
  const SkMyPage({super.key});

  @override
  State<SkMyPage> createState() => _SkMyPageState();
}

class _SkMyPageState extends State<SkMyPage> {
  List<int> top = <int>[];
  List<int> bottom = <int>[0];
  List<String> mTabs = ['历史', '收藏', '点赞', '动态'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: false,
            // collapsedHeight: 80,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.blueGrey,
                child: WidgetUserInfo(),
              ),
            ),
            bottom: PreferredSize(
                preferredSize: const Size.fromHeight(60),
                child: TabBar(
                    tabs:
                        mTabs.map((String name) => Tab(text: name)).toList())),
            // Stack(
            //   children: [
            //     Positioned(left: 0, top: 0, child: WidgetUserInfo()),
            //     // Positioned(left: 0, bottom: 0, child: WidgetFunctionBar()),
            //   ],
            // ),
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                // color: Colors.blue[200 + top[index] % 4 * 100],
                // height: 100 + top[index] % 4 * 20.0,
                child: Text('Item1'),
              );
            }, childCount: 40),
          ),
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
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
    );
  }

  //!end class
}
