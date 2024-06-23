import 'package:flutter/material.dart';



class Calculas extends StatefulWidget {
   Calculas({super.key});

  @override
  State<Calculas> createState() => _CalculasState();
}

class _CalculasState extends State<Calculas> {
TextEditingController n1=TextEditingController();

TextEditingController n2=TextEditingController();

int add=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextFormField(
              controller: n1,
              decoration: InputDecoration(
                hintText: 'enter 1st number:'
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: n2,
              decoration: InputDecoration(
                  hintText: 'enter 2nd number:'
              ),
            ),
            FloatingActionButton(onPressed: (){
              int res=int.parse(n1.text)+  int.parse(n2.text);
              //add=22
              add=res;
              // use for refreshing the screen
              setState(() {

              });
              print('addition=$add');
            },child: Icon(Icons.add),backgroundColor: Colors.blue,),
            Text('Result=$add'),

          ],
        ),
      ),
    );
  }
}
