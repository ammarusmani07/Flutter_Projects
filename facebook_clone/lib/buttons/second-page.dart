import 'package:facebook_clone/facebook_design.dart';
import 'package:flutter/material.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: 
      
      
      //Text('2nd page'),
      TextButton(onPressed: (){

        print('navigating to  facebook ui');
        Navigator.push(context, MaterialPageRoute(builder: (context)=>FacebookUI()));
      }, child: Text('data'))
      ),
    );
  }
}
