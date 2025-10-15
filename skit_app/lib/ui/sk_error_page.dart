import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:skit_app/ui/sk_ui_def.dart';

class SkErrorPage extends StatefulWidget {
  late String mMsg;
  //
  SkErrorPage({super.key, required String msg}) {
    mMsg = msg;
  }

  @override
  State<SkErrorPage> createState() => _SkErrorPageState();
}

class _SkErrorPageState extends State<SkErrorPage> {
  //

  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
      // color: Colors.amber,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ERROR'),
        leading: IconButton(
          icon: const Icon(CupertinoIcons.back),
          onPressed: () {
            GoRouter.of(context).pop();
          },
        ),
        // actions: <Widget>[
        //   IconButton(
        //     icon: const Icon(Icons.search),
        //     onPressed: () {
        //       // Handle search button press
        //     },
        //   ),
        //   IconButton(
        //     icon: const Icon(Icons.more_vert),
        //     onPressed: () {
        //       // Handle more options button press
        //     },
        //   ),
        // ],
        backgroundColor: Colors.white,
        elevation: 4.0,
      ),
      body: Center(
        // color: Colors.amber,
        child: TextButton(
            child: Text(widget.mMsg),
            onPressed: () {
              GoRouter.of(context).pop();
            }),
      ),
// leadi
    );
  }

  //!end class
}
