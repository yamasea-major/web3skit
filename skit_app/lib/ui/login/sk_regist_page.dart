import 'package:flutter/material.dart';

class SkRegistPage extends StatefulWidget {
  const SkRegistPage({super.key});

  @override
  State<SkRegistPage> createState() => _SkRegistPageState();
}

class _SkRegistPageState extends State<SkRegistPage> {
  List<int> top = <int>[];
  List<int> bottom = <int>[0];

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return CustomScrollView(
      center: centerKey,
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
          key: centerKey,
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
