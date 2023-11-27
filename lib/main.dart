import 'package:flutter/material.dart';
import 'package:elearningapp/screens/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E Learning',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SplashPage(),
    );
  }
}