import 'package:facebook_clone/list-class/model-class.dart';
import 'package:flutter/material.dart';


class practice extends StatefulWidget {
  const practice({super.key});

  @override
  State<practice> createState() => _practiceState();
}

class _practiceState extends State<practice> {
  List <ModelClass> name = [
    ModelClass('Ahmad Afzal','suna kia kar raha hai'),
    ModelClass('Ahmad Afzal','suna kia kar raha hai'),
    ModelClass('Ahmad Afzal','suna kia kar raha hai'),
    ModelClass('Ahmad Afzal','suna kia kar raha hai'),
  ];
  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(
      body: ListView.builder(itemCount:name.length
              : itemBuilder(context,index))

    ));
  }
}
