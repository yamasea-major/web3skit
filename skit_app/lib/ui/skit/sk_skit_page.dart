import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../frame/sk_notifier.dart';
import '../../notifiers/sk_login_notifier.dart';
import '../../notifiers/sk_mult_skits_list_notifier.dart';
import '../../sk_app.dart';
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
  List<String> mTabs = ['找剧', '社区', '漫剧', '电影', '电视剧', '小说', '经典', '知识'];
  //
  @override
  Widget build(BuildContext context) {
    //
    // Color aa = Colors.black;
    //
    SkNotifier? loginNotifier =
        gSkApp.mSkNotiferSys?.getSkNotifier('SkLoginNotifier');
    if (loginNotifier != null && loginNotifier is SkLoginNotifier) {
      // mIsLogin = loginNotifier.mIsLogin;
    }
    //
    SkNotifier? mutlSkitNotifier =
        gSkApp.mSkNotiferSys?.getSkNotifier('SkMultSkitsListNotifier');
    if (mutlSkitNotifier != null &&
        mutlSkitNotifier is SkMultSkitsListNotifier) {
      // mIsLogin = loginNotifier.mIsLogin;
    }

    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: loginNotifier),
        ChangeNotifierProvider.value(value: mutlSkitNotifier),
      ],
      child: DefaultTabController(
        length: mTabs.length,
        child: buildTabContent(context),
      ),
    );
  }

  Widget buildTabContent(BuildContext context) {
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
                  behavior: HitTestBehavior.opaque,
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
        SliverToBoxAdapter(
          child: PreferredSize(
              preferredSize: Size.fromHeight(60.w),
              child: TabBar(
                  tabs: mTabs.map((String name) => Tab(text: name)).toList())),
        ),
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
            childCount: 9,
          ),
        ),
        buildList(context),
      ],
    );
  }

  Widget buildList(BuildContext context) {
    return SliverFixedExtentList(
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
    );
  }

  //!end class
}
