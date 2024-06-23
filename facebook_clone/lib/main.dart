import 'package:facebook_clone/LoginScreen.dart';
import 'package:facebook_clone/Messenger.dart';
import 'package:facebook_clone/SignUp.dart';
import 'package:facebook_clone/Splash_screen.dart';
import 'package:facebook_clone/buttons/button1.dart';
import 'package:facebook_clone/ca3c43at6r/HOMEscreen/screen.dart';
import 'package:facebook_clone/claswork/ist.dart';
import 'package:facebook_clone/facebook_design.dart';
import 'package:facebook_clone/list-class/list-home.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() //async
{
  WidgetsFlutterBinding.ensureInitialized();
 // await SharedPreferences.getInstance(); // Add this line
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: ListHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
