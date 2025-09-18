import 'package:flutter/material.dart';

class SkInHomePage extends StatefulWidget {
  const SkInHomePage({super.key});

  @override
  State<SkInHomePage> createState() => _SkInHomePageState();
}

class _SkInHomePageState extends State<SkInHomePage> {
  List<int> top = <int>[];
  List<int> bottom = <int>[0];

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      // center: centerKey,
      slivers: <Widget>[
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
          // key: centerKey,
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return Container(
              alignment: Alignment.center,
              child: Text('Item2'),
            );
          }, childCount: 5),
        ),
      ],
    );
  }

  //!end class
}
