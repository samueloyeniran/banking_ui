import 'package:banking_ui/pages/registration_page1.dart';
import 'package:banking_ui/pages/registration_pages/registerPage3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 896),
      minTextAdapt: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Banking_ui_App",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Registerpage3(),
      ),
    );
  }
}
