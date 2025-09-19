import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'sk_my_page_header.dart';

class SkMyPage extends StatefulWidget {
  const SkMyPage({super.key});

  @override
  State<SkMyPage> createState() => _SkMyPageState();
}

class _SkMyPageState extends State<SkMyPage> {
  List<int> top = <int>[];
  List<int> bottom = <int>[0];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
            pinned: true,
            floating: true,
            snap: false,
            expandedHeight: 210.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Available seats'),
              background: Image.network(
                'https://img.freepik.com/free-photo/fuji-mountain-kawaguchiko-lake-morning-autumn-seasons-fuji-mountain-yamanachi-japan_335224-102.jpg?semt=ais_incoming&w=740&q=80',
                fit: BoxFit.fitHeight,
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.add_circle),
                tooltip: 'Add new entry',
                onPressed: () {
                  /* ... */
                },
              ),
            ]),
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
    );
  }

  //!end class
}
