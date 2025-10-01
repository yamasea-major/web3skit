import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../sk_ui_common_def.dart';
import '../sk_ui_def.dart';

class SkRewardPage extends StatefulWidget {
  const SkRewardPage({super.key});

  @override
  State<SkRewardPage> createState() => _SkRewardPageState();
}

class _SkRewardPageState extends State<SkRewardPage> {
  List<int> top = <int>[];
  List<int> bottom = <int>[0];

  bool showAppBar = false;

  @override
  Widget build(BuildContext context) {
    // const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 17, 209, 45),
      ),
      child: buildScrollView(context),
    );
  }

  Widget buildScrollView(BuildContext context) {
    return CustomScrollView(
      // center: centerKey,
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          floating: true,
          snap: false,
          collapsedHeight: SkCommonDef.mStatusBarH + 44.w,
          expandedHeight: 140.w,
          primary: true,
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              color: Colors.blueGrey,
              width: SkCommonDef.mScreenW,
              height: 120.w,
              child: Row(
                children: [
                  Expanded(
                      child: Container(
                    color: Colors.red,
                  )),
                  Expanded(
                      child: Container(
                    color: Colors.blue,
                  ))
                ],
              ),
            ),
          ),
          // actions: [
          //   Icon(
          //     CupertinoIcons.search,
          //     size: s20.w,
          //   ),
          //   // Icon(
          //   //   CupertinoIcons.search,
          //   //   size: s20.w,
          //   // ),
          //   Text('111')
          // ],
          title: Padding(
            padding: EdgeInsets.only(top: SkCommonDef.mStatusBarH),
            child: Text('333'),
          ),
          centerTitle: true,
          // leading: Text('222'),
          // bottom: PreferredSize(
          //   preferredSize: Size.fromHeight(60.w),
          //   child: Text('222'),
          // ),
        ),
        // SliverToBoxAdapter(
        //     child: DecoratedBox(
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       begin: Alignment.topCenter,
        //       end: Alignment.bottomCenter,
        //       colors: [
        //         const Color.fromARGB(255, 7, 235, 113),
        //         Colors.white
        //       ], // 渐变颜色
        //     ),
        //   ),
        //   child: Padding(
        //     padding: const EdgeInsets.all(16.0),
        //     child: ListView.builder(
        //       shrinkWrap: true,
        //       itemCount: 100, // 举例，实际根据需要调整
        //       itemBuilder: (BuildContext context, int index) {
        //         return ListTile(title: Text('Item $index'));
        //       },
        //     ),
        //   ),
        // )),
        SliverList(
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              // color: Colors.blue[200 + top[index] % 4 * 100],
              // height: 100 + top[index] % 4 * 20.0,
              child: Text('Item1'),
            );
          }, childCount: 140),
        ),
      ],
    );
  }

  //!end class
}
