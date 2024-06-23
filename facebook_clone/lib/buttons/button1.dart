import 'package:facebook_clone/buttons/second-page.dart';
import 'package:flutter/material.dart';


class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(

      child:  Scaffold(
        appBar: AppBar(backgroundColor: Colors.green,),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(onPressed: ()
          {
            // backend....
            //navigation.....
            Navigator.push(context,
                MaterialPageRoute(
                builder: (context)=> SecondPage()   ));
/*

arrow function

 void add()=> statement


  void add()
  {
  stement
  }
 */
          },
              icon: Icon(Icons.home)),
          FloatingActionButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondPage()));
          },
          backgroundColor: Colors.green,
            child: Icon(Icons.add),

          ),

        ],
      )),
    ), );

  }
}
