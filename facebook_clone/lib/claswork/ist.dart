import 'package:flutter/material.dart';


class ListClass extends StatelessWidget {
  const ListClass({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Card(
              color: Colors.blue ,
              elevation: 1,
          //    shape: ShapeBorder.lerp(, b, t),
              child: ListTile(
                title: Text('title'),
                subtitle: Text('subtitle'),
                leading:CircleAvatar() ,
                trailing:Icon(Icons.house) ,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
