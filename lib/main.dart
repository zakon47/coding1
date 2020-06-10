import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
import 'package:nsi/pages/verstka.dart';

import 'pages/SpeedCoding1.dart';
import 'pages/home.dart';
import 'pages/likes.dart';

void main() {
  debugPaintSizeEnabled = false;
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "my first app",
      theme: ThemeData(
          fontFamily: 'Roboto2',
          primarySwatch: Colors.deepPurple,
          textTheme: TextTheme(
              bodyText1: TextStyle(fontSize: 30, color: Colors.white70))),
      home: HomePage(),
      routes: {
        '/verstka': (context) => Verstka(),
        '/speedCoding1': (context) => SpeedCoding1(),
        '/speedCoding1_1': (context) => SpeedCoding11(),
        '/likes': (context) => LikesPage(title: "Likes Page"),
      },
    );
  }
}
