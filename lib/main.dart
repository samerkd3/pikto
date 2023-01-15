import 'package:flutter/material.dart';
import 'package:pikto/HomePage.dart';

import 'MainPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Cairo'
      ),
      home:  Directionality(
            textDirection: TextDirection.rtl,
          child: MainPage()),
    );
  }
}
