import 'package:flutter/material.dart';
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Widget calcbutton (String txtbtn , Color btncolor ,  Color txtclor){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
      ),
      child: FloatingActionButton(
        onPressed: () {},
        child: Text(
          txtbtn,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: txtclor,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: btncolor,
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Center(
              child: Text('Calculator',
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),),
            ),
          ),
          body: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('0',
                  style: TextStyle(
                    fontSize: 80,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),)

                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  calcbutton('AC', Colors.grey, Colors.black),

                  calcbutton('+/-', Colors.grey, Colors.black),

                  calcbutton('%', Colors.grey, Colors.black),

                  calcbutton('/', Colors.amber.shade700, Colors.white),

                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  calcbutton('7', Colors.grey, Colors.white),

                  calcbutton('8', Colors.grey, Colors.white),

                  calcbutton('9', Colors.grey, Colors.white),

                  calcbutton('X', Colors.amber.shade700, Colors.white),

                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  calcbutton('4', Colors.grey, Colors.white),

                  calcbutton('5', Colors.grey, Colors.white),

                  calcbutton('6', Colors.grey, Colors.white),

                  calcbutton('+', Colors.amber.shade700, Colors.white),

                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  calcbutton('1', Colors.grey, Colors.white),

                  calcbutton('2', Colors.grey, Colors.white),

                  calcbutton('3', Colors.grey, Colors.white),

                  calcbutton('-', Colors.amber.shade700, Colors.white),

                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed:(){


                  }

                  ,

                    child:Text('0',style:
                    TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white
                    ),),
                     style: ElevatedButton.styleFrom(
                       primary: Colors.grey,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(30)

                       ),

                       minimumSize: Size(145, 60)

                     ),

                  ),
                  calcbutton(".", Colors.grey , Colors.white),
                  calcbutton("=", Colors.amber.shade700 , Colors.white),
                ],
              )
            ],
          )



        )
    );
  }
  dynamic text ='0';
  double numOne = 0;
  double numTwo = 0;

  dynamic result = '';
  dynamic finalResult = '';
  dynamic opr = '';
  dynamic preOpr = '';
  void calculation(btnText) {


    if(btnText  == 'AC') {
      text ='0';
      numOne = 0;
      numTwo = 0;
      result = '';
      finalResult = '0';
      opr = '';
      preOpr = '';

    } else if( opr == '=' && btnText == '=') {

      if(preOpr == '+') {
        finalResult = add();
      } else if( preOpr == '-') {
        finalResult = sub();
      } else if( preOpr == 'x') {
        finalResult = mul();
      } else if( preOpr == '/') {
        finalResult = div();
      }

    } else if(btnText == '+' || btnText == '-' || btnText == 'x' || btnText == '/' || btnText == '=') {

      if(numOne == 0) {
        numOne = double.parse(result);
      } else {
        numTwo = double.parse(result);
      }

      if(opr == '+') {
        finalResult = add();
      } else if( opr == '-') {
        finalResult = sub();
      } else if( opr == 'x') {
        finalResult = mul();
      } else if( opr == '/') {
        finalResult = div();
      }
      preOpr = opr;
      opr = btnText;
      result = '';
    }
    else if(btnText == '%') {
      result = numOne / 100;
      finalResult = doesContainDecimal(result);
    } else if(btnText == '.') {
      if(!result.toString().contains('.')) {
        result = result.toString()+'.';
      }
      finalResult = result;
    }

    else if(btnText == '+/-') {
      result.toString().startsWith('-') ? result = result.toString().substring(1): result = '-'+result.toString();
      finalResult = result;

    }

    else {
      result = result + btnText;
      finalResult = result;
    }


    setState(() {
      text = finalResult;
    });

  }


  String add() {
    result = (numOne + numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }

  String sub() {
    result = (numOne - numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }
  String mul() {
    result = (numOne * numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }
  String div() {
    result = (numOne / numTwo).toString();
    numOne = double.parse(result);
    return doesContainDecimal(result);
  }


  String doesContainDecimal(dynamic result) {

    if(result.toString().contains('.')) {
      List<String> splitDecimal = result.toString().split('.');
      if(!(int.parse(splitDecimal[1]) > 0))
        return result = splitDecimal[0].toString();
    }
    return result;
  }

}
