import 'package:flutter/material.dart';
import '../common/widget_search.dart';

class SkSkitPage extends StatefulWidget {
  const SkSkitPage({super.key});

  @override
  State<SkSkitPage> createState() => _SkSkitPageState();
}

class _SkSkitPageState extends State<SkSkitPage> {
  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('skit_page');
    return CustomScrollView(
      // center: centerKey,
      slivers: <Widget>[
        SliverAppBar(
            backgroundColor: Colors.blue,
            expandedHeight: 160.0,
            pinned: false,
            stretch: false,
            flexibleSpace: WidgetSearch()),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 4.0,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: Text('grid item $index'),
              );
            },
            childCount: 20,
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.lightBlue[100 * (index % 9)],
                child: Text('list item $index'),
              );
            },
          ),
        ),
      ],
    );
  }

  //!end class
}
