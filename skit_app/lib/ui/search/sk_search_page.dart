import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../common/widget_search.dart';
import '../sk_ui_def.dart';

class SkSearchPage extends StatefulWidget {
  const SkSearchPage({super.key});

  @override
  State<SkSearchPage> createState() => _SkSearchPageState();
}

class _SkSearchPageState extends State<SkSearchPage> {
  List<int> top = <int>[];
  List<int> bottom = <int>[0];

  @override
  Widget build(BuildContext context) {
    // const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return CustomScrollView(
      // center: centerKey,
      slivers: <Widget>[
        SliverAppBar(
            backgroundColor: Colors.blue,
            expandedHeight: 100.0,
            pinned: true,
            floating: false,
            snap: false,
            leading: GestureDetector(
              onTap: () {
                GoRouter.of(context).pop();
              },
              child: Icon(
                CupertinoIcons.back,
                size: s32,
              ),
              // Padding(
              //     padding: EdgeInsets.only(top: 2,left: 10),
              //     child: Icon(
              //       CupertinoIcons.back,
              //       size: s32,
              //     )),
            ),
            actions: <Widget>[
              TextButton(
                child: Text(
                  '搜索',
                  style: TextStyle(
                    fontSize: f16,
                    color: Colors.black,
                  ),
                ),
                onPressed: () {
                  /* ... */
                },
              ),
            ],
            flexibleSpace: SafeArea(
              child: Column(children: [
                SizedBox(
                  width: 326,
                  child: WidgetSearch(),
                )
              ]),
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
        // SliverList(
        //   // key: centerKey,
        //   delegate:
        //       SliverChildBuilderDelegate((BuildContext context, int index) {
        //     return Container(
        //       alignment: Alignment.center,
        //       // color: Colors.blue[200 + bottom[index] % 4 * 100],
        //       // height: 100 + bottom[index] % 4 * 20.0,
        //       child: Text('Item2'),
        //     );
        //   }, childCount: 40),
        // ),
      ],
    );
  }

  //!end class
}
