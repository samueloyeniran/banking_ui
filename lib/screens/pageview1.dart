import 'package:banking_ui/screens/screen1.dart';
import 'package:banking_ui/screens/screen2.dart';
import 'package:banking_ui/screens/screen3.dart';
import 'package:flutter/material.dart';

class Pageview1 extends StatefulWidget {
  const Pageview1({super.key});

  @override
  State<Pageview1> createState() => _Pageview1State();
}

class _Pageview1State extends State<Pageview1> {
  int activePage = 0;
  List<Widget> pages = [
    Screen1(),
    Screen2(),
    Screen3(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(itemBuilder: (BuildContext context, int index) {
            return pages[index% pages.length];
          })
        ],
      ),
    );
  }
}
