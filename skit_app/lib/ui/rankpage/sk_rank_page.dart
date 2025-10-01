import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:skit_app/ui/sk_ui_def.dart';

class SkRankPage extends StatefulWidget {
  const SkRankPage({super.key});

  @override
  State<SkRankPage> createState() => _SkRankPageState();
}

class _SkRankPageState extends State<SkRankPage> {
  // List<int> top = <int>[];
  // List<int> bottom = <int>[0];

  @override
  Widget build(BuildContext context) {
    // const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      // height: 100,
      // width: 100,
      child: CustomScrollView(
        // center: centerKey,
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            floating: true,
            snap: false,
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 255, 0, 0),
            expandedHeight: 180.0,
            leading: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                GoRouter.of(context).pop();
              },
              child: Icon(
                CupertinoIcons.back,
                size: s32,
              ),
            ),

            flexibleSpace: FlexibleSpaceBar(
              title: Text('Hot Skits'),
              background: Image.network(
                'https://img.freepik.com/free-photo/fuji-mountain-kawaguchiko-lake-morning-autumn-seasons-fuji-mountain-yamanachi-japan_335224-102.jpg?semt=ais_incoming&w=740&q=80',
                fit: BoxFit.fitHeight,
              ),
            ),
            // actions: <Widget>[
            //   IconButton(
            //     icon: const Icon(Icons.add_circle),
            //     tooltip: 'Add new entry',
            //     onPressed: () {
            //       /* ... */
            //     },
            //   ),
            // ]
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
      ),
    );
    ;
  }

  //!end class
}
