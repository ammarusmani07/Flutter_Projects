

import 'package:facebook_clone/SignUp.dart';
import 'package:facebook_clone/facebook_design.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  void loginSave()
 async {
    SharedPreferences obj=await SharedPreferences.getInstance();
    obj.setString('status','login'  );
    print('login save function................before navigate');
    Navigator.push(context, MaterialPageRoute(builder: (context)=>FacebookUI()));
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
            Center(child:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Login',style:
                TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.white,
                ),),
                SizedBox(height: 10,),
                ///-------email text field
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

                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                          hintText: 'Enter your Email',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(left: 8),
                        prefixIcon: Icon(
                          Icons.email_rounded,
                        ),
                      ),                    ),
                  ),
                ),
                /// here adding the password field
                SizedBox(height: 10,),
                ///------------pass word text field
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

                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 8),
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye)
                      ),                    ),
                  ),

                ),
                //  Row(
                //   children: [
                //     ElevatedButton(onPressed: onPressed(){
                //       Navigator.push
                //     })
                //
                //   ],
                // )
                ///----login button
                SizedBox(height: 10,),
                InkWell(
                  onTap: (){
                    String  email,password;
                    email=emailController.text;
                    password=passwordController.text;

                    if(email=='ammarusmani@gmail.com' && password=='123456')
                      {

                        loginSave();

                      }
                    else if(email=='') {
                      print('  empty error');
                    }

                  },
                  child: Container(
                    height: 50,width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Center(child: Text('Login')),
                  ),
                ),
                /// Now here i m adding the dont have an account ?

                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Dont have an account?',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 1),
                        child:
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));


                        },
                          child: Text('Sign up ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),),),

                      )







                    ],

                  ),

                )
                // Add more widgets as needed for your login screen
              ],
            ),

            ),

            // Padding(
            //   padding: const EdgeInsets.only(left: 142,top: 70),
            //   child:
            // ),

          ],
        ),
      ),
    );
  }
}
