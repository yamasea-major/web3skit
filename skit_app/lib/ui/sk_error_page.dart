import 'package:flutter/material.dart';

class SkErrorPage extends StatefulWidget {
  late String mMsg;
  SkErrorPage({super.key, required String msg}) {
    mMsg = msg;
  }

  @override
  State<SkErrorPage> createState() => _SkErrorPageState();
}

class _SkErrorPageState extends State<SkErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(widget.mMsg),
    );
  }

  //!end class
}
