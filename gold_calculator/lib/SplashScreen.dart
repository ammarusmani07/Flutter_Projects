import 'package:flutter/material.dart';
import 'Home.dart'; // Assuming Home.dart contains the HomeScreen widget

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Simulate a delay of 2 seconds before navigating to the HomeScreen
    Future.delayed(Duration(seconds: 6), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/splashscreen.webp'), // Adjust the file name and path accordingly
                fit: BoxFit.fill, // Set BoxFit.fill to stretch the image to cover the entire screen
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  'Gold calculator',
                  style: TextStyle(
                    color: Colors.yellow.shade900,
                    fontFamily: "splashfont",
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
