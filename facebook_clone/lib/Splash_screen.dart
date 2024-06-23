import 'package:facebook_clone/LoginScreen.dart';
import 'package:facebook_clone/facebook_design.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScrren extends StatefulWidget {
  const SplashScrren({super.key});

  @override
  State<SplashScrren> createState() => _SplashScrrenState();
}

class _SplashScrrenState extends State<SplashScrren> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
      Duration(
        seconds: 2,
      ),(){
        check();
        //Navigator.push(context, MaterialPageRoute(builder: (context)=>FacebookUI()));
    }

    );

  }
  void check()
 async {
    SharedPreferences obj=await SharedPreferences.getInstance();
    String? checked=obj.getString('status');
   // Navigator.push(context, MaterialPageRoute(builder: (context)=>FacebookUI()));
      if(checked==null )
       {
         Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
         //Navigator.push(context, MaterialPageRoute(builder: (context)=>FacebookUI()));
       }
     else
     {
       Navigator.push(context, MaterialPageRoute(builder: (context)=>FacebookUI()));
     }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage('assets/icons/facebook.png'),
                    height: 75,
                    width: 75,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 290),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Meta',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Image(
                      image: AssetImage(
                        'assets/icons/meta.png',
                      ),
                      height: 17,
                      width: 17,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
