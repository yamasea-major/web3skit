// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import '../sk_ui_def.dart';

// search widget

// class WidgetSearch extends StatefulWidget {
//   const WidgetSearch({super.key});

//   @override
//   State<WidgetSearch> createState() => _WidgetSearchState();
// }

// class _WidgetSearchState extends State<WidgetSearch> {
//   List<int> top = <int>[];
//   List<int> bottom = <int>[0];

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: double.infinity,
//       height: 42,
//       child: SearchBar(
//         hintText: 'search tips....',
//         shape: WidgetStateProperty.all(
//             RoundedRectangleBorder(borderRadius: BorderRadius.circular(r12))),
//         leading: Icon(
//           CupertinoIcons.search,
//           size: s20,
//         ),
//         onChanged: (query) {
//           // Handle text changes, e.g., filter results
//           // print('Search query changed: $query');
//         },
//         onSubmitted: (query) {
//           // Handle search submission
//           // print('Search submitted: $query');
//         },
//       ),
//     );
//   }

//   //!end class
// }
