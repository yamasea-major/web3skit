import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../common/widget_search.dart';
import '../common/widget_skit_card.dart';
import '../sk_ui_def.dart';

class SkSkitPage extends StatefulWidget {
  const SkSkitPage({super.key});

  @override
  State<SkSkitPage> createState() => _SkSkitPageState();
}

class _SkSkitPageState extends State<SkSkitPage> {
  //
  Color aa = Colors.black;

  //
  @override
  Widget build(BuildContext context) {
    //
    // Color aa = Colors.black;
    //
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
            backgroundColor: Colors.blue,
            expandedHeight: 100.0,
            pinned: true,
            floating: false,
            snap: false,
            flexibleSpace: SafeArea(
              child: Container(
                // color: aa,
                height: s36,
                padding: EdgeInsets.fromLTRB(b12, 0, b12, 0),
                child: GestureDetector(
                  onTap: () {
                    print("search");
                    GoRouter.of(context).push('/search');
                  },
                  child: AbsorbPointer(
                    child: WidgetSearch(),
                  ),
                ),
              ),
            )),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            // maxCrossAxisExtent: 200.0,
            crossAxisCount: 3,
            mainAxisSpacing: b8,
            crossAxisSpacing: b4,
            childAspectRatio: 0.75,
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: WidgetSkitCard(),
              );
            },
            childCount: 18,
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
