import 'package:facebook_clone/list-class/model-class.dart';
import 'package:flutter/material.dart';

class ListHome extends StatefulWidget {
  const ListHome({super.key});

  @override
  State<ListHome> createState() => _ListHomeState();
}
/// in this the model class is used

class _ListHomeState extends State<ListHome> {
  List <> name=[
    ModelClass('Title1', 'Fish'),// index =0
    ModelClass('Title2', 'Fish'),// index =0
    ModelClass('Title3', 'Fish'),// index =0
    ModelClass('Title4', 'Fish'),// index =0
    ModelClass('Title5', 'Fish'),// index =0
    ModelClass('Title6', 'Fish'),// index =0
    ModelClass('Title7', 'Fish'),// index =0


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(

          itemCount: name.length,
          itemBuilder: (context,index)
          {
            return ListTile(

              title: Text(name[index].title.toString()),
              subtitle: Text(name[index].subTitle.toString()),
              leading: CircleAvatar(),

            );
          }
      ),
    );
  }
}
