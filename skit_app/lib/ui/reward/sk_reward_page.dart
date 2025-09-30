import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../sk_ui_common_def.dart';

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
    return CustomScrollView(
      // center: centerKey,
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          floating: true,
          snap: true,
          collapsedHeight: SkCommonDef.mStatusBarH,
          expandedHeight: 140.w,
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
          // bottom: Container(color: Colors.amber,)),
        ),
        SliverToBoxAdapter(
            child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                const Color.fromARGB(255, 7, 235, 113),
                Colors.white
              ], // 渐变颜色
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 100, // 举例，实际根据需要调整
              itemBuilder: (BuildContext context, int index) {
                return ListTile(title: Text('Item $index'));
              },
            ),
          ),
        )),
        // SliverList(
        //   delegate:
        //       SliverChildBuilderDelegate((BuildContext context, int index) {
        //     return Container(
        //       alignment: Alignment.center,
        //       // color: Colors.blue[200 + top[index] % 4 * 100],
        //       // height: 100 + top[index] % 4 * 20.0,
        //       child: Text('Item1'),
        //     );
        //   }, childCount: 40),
        // ),
      ],
    );
  }

  //!end class
}
