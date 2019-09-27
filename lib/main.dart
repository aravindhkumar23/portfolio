import 'package:portfolio/home_page.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/portfolio.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aravindh Kumar',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        }),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        '/portfolio': (context) => Portfolio(),
      },
    );
  }
}
