import 'package:flutter/material.dart';

import 'package:untitled/SplashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gold Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
