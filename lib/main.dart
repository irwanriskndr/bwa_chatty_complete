// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/chat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/homepage': (context) => HomePage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/chat': (context) => Chat(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: HomePage(),
    );
  }
}
