import 'package:flutter/material.dart';
import 'SkHomeTabPage.dart';

class SkHomePage extends StatelessWidget {
  const SkHomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SkHomeTabPage(),
    );
  }
}

