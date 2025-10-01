import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../sk_ui_def.dart';

Future<int?> bottomSheetSpeed(context) async {
  //
  List<String> mSpeedItem = [
    '3.0x',
    '2.0x',
    '1.5x',
    '1.25x',
    '1.0x(default)',
    '0.75x'
  ];
  //
  return showModalBottomSheet<int>(
    backgroundColor: Colors.transparent,
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(20.0),
            topRight: const Radius.circular(20.0),
          ),
        ),
        height: MediaQuery.of(context).size.height / 2.0,
        child: Column(children: [
          SizedBox(
            height: 50.w,
            child: Stack(
              textDirection: TextDirection.rtl,
              children: [
                Center(
                  child: Text(
                    '倍速',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: f16),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ],
            ),
          ),
          // Divider(height: 1.0),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    title: Text(mSpeedItem[index]),
                    onTap: () {
                      Navigator.of(context).pop(index);
                    });
              },
              itemCount: mSpeedItem.length,
            ),
          ),
        ]),
      );
    },
  );

  //
}
