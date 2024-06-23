import 'package:facebook_clone/LoginScreen.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  DateTime selecteddate= DateTime.now();
  TextEditingController datetimepicker=TextEditingController();
  @override
   void initState(){
    super.initState();
    datetimepicker.text="${selecteddate.toLocal()}".split(' ')[0];
  }
  Future<void>_selectDate(BuildContext context) async{
    final DateTime? picked= await showDatePicker(
        context: context,
        initialDate: selecteddate,
        firstDate: DateTime(1900), lastDate: DateTime.now(),);
    if (picked==null){
      setState((
          ) {
        selecteddate=picked!;
      });
    }

}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/background.png', // Replace with your image asset path
              fit: BoxFit.cover,
            ),

            Column(

              crossAxisAlignment: CrossAxisAlignment.center,
              children: [

                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text('SignUp',style:
                                       TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.white, ),
                                     ),
                   ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      width: 270,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.white,

                        ),
                      ),

                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Enter your Email',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.only(left: 8)
                        ),                    ),
                    ),
                  ],
                ),
                /// here adding the password field
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      width: 270,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.white,

                        ),
                      ),

                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 8),
                        ),                    ),

                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      width: 270,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.white,

                        ),
                      ),

                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Confirm Password',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 8),
                        ),                    ),

                    ),
                  ],
                ), SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      width: 270,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.white,

                        ),
                      ),

                      child: TextField(

                        decoration: InputDecoration(
                          hintText: 'Enter Phone No',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 8),
                        ),                    ),

                    ),
                  ],

                ),
                /// date and time picker
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 45,
                      width: 270,

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.white,

                        ),
                      ),

                      child: TextField(
                        onTap: () => _selectDate(context),
                        readOnly: true,
                        controller: datetimepicker,
                        decoration: InputDecoration(
                          hintText: 'Date of birth',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 8),
                        ),                    ),

                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Container(
                  height: 50,width: 150,
                  decoration: BoxDecoration(
                      color: Colors.white,
                    borderRadius: BorderRadius.circular(18)
                  ),
                  child: Center(child: Text('Sign Up')),
                ),

                /// Now here i m adding the dont have an account ?

                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 1),
                        child:
                        TextButton(onPressed: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));


                        },
                          child: Text('Log In ',
                            style:
                            TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 17,color: Colors.white),),),

                      )







                    ],

                  ),

                )
                // Add more widgets as needed for your login screen
              ],
            ),
          ],
        ),
      ),
    );
  }
}
