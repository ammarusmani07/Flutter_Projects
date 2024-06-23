import 'package:facebook_clone/Messenger.dart';
import 'package:facebook_clone/buttons/second-page.dart';
import 'package:flutter/material.dart';

class FacebookUI extends StatelessWidget {
  const FacebookUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "facebook",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          //centerTitle: true,
          // leading: Icon(Icons.menu),
          actions: [
            CircleAvatar(
              radius: 13,
              backgroundColor: Colors.grey,
              child:
              InkWell(
                onTap: (){
                  print('hellow');
                  },
                child: Icon(
                     Icons.search,
                     size: 20,
                   ),

              ),
              // child: Icon(
              //   Icons.search,
              //   size: 20,
              // ),
            ),
            SizedBox(
              width: 3,
            ),

            CircleAvatar(
                radius: 15,
                backgroundColor: Colors.grey,
                child:InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context)=>Messenger())
                    );
                  },
                    child: Image(
                      image: AssetImage(
                        'assets/icons/messenger.png',
                      ),
                      height: 22,
                      width: 22,
                    )
                ),
               ),
            SizedBox(
              width: 10,
            ), //  CircleAvatar(backgroundImage: ,)
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ///----------1t row


              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.blue,
                      size: 30,
                    ),
                    Padding(padding: const EdgeInsets.only(right: 35, top: 40)),
                    Icon(
                      Icons.video_camera_front_outlined,
                      color: Colors.grey,
                      size: 30,
                    ),
                    Padding(padding: const EdgeInsets.only(right: 38, top: 40)),
                    Icon(
                      Icons.person_off,
                      color: Colors.grey,
                      size: 30,
                    ),
                    Padding(padding: const EdgeInsets.only(right: 38, top: 40)),
                    Icon(
                      Icons.mail_lock,
                      color: Colors.grey,
                      size: 30,
                    ),
                    Padding(padding: const EdgeInsets.only(right: 38, top: 40)),
                    Icon(
                      Icons.notification_add,
                      color: Colors.grey,
                      size: 30,
                    ),
                    Padding(padding: const EdgeInsets.only(right: 38, top: 40)),
                    Icon(
                      Icons.menu,
                      color: Colors.grey,
                      size: 30,
                    ),
                  ],
                ),
              ),
              Divider(height: 19),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                          'assets/images/ammar.usmanii_91465033_1978403452303102_6492462450264854895_n.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 6),
                      child: InkWell(
                        onTap: (){
                          print('on tap pressing................................');
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));
                        },
                        onLongPress: (){

                        },
                        child: Row(
                          children: [
                            Container(
                              height: 40,
                              width: 300,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24),
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2,
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text(
                                  "Whats in your mind?",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(height: 19),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 17),
                    child: Image(
                      image: AssetImage('assets/icons/reel.png',),width: 33,height: 33,
                    )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2, top: 5),
                    child: Text(

                      "Live",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 19),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 45),
                    child: Icon(
                      Icons.photo,
                      color: Colors.green,
                      size: 27,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 2, top: 5),
                    child: Text(
                      "Photo/Video",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 29),
                    child: Icon(
                      Icons.live_tv,
                      color: Colors.blue,
                      size: 27,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5, top: 5),
                    child: Text(
                      "Room",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Audio and Video Rooms",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Create Room"),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.blue,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/images/cool-profile-picture-awled9dwo4qq2yv2.jpg'),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.green,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/images/desktop-wallpaper-cool-boy-boy-pic.jpg'),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.green,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/images/dark-aesthetic-boy-pfp-27.jpg'),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.green,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/images/pexels-photo-771742.webp'),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.green,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                            'assets/images/ammar.usmanii_91465033_1978403452303102_6492462450264854895_n.jpg'),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.green,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/unnamed.jpg'),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: CircleAvatar(
                            radius: 5,
                            backgroundColor: Colors.green,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: Container(
                            height: 240,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                image:
                                    AssetImage("assets/images/My-profile.jpg"),
                                fit: BoxFit.cover,

                              ),

                            ),
                          child: Align(
                            alignment: Alignment.center,
                            child: FloatingActionButton(
                              onPressed: (){
                                
                              },
                              backgroundColor: Colors.blue,
                              shape: CircleBorder(

                              ),
                              mini: true,
                              child: Icon(Icons.add,size: 40,
                                color: Colors.white ,
                              ),
                            ),
                          ),





                        ),



                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                            height: 240,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/dark-aesthetic-boy-pfp-27.jpg"),
                                    fit: BoxFit.cover)),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width:
                                        40, // Set the total width including the border
                                    height:
                                        40, // Set the total height including the border
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.blue,
                                          width: 2.0 // Set the border color
                                          // Set the border width
                                          ),
                                    ),

                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: CircleAvatar(
                                        radius: 70,
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: CircleAvatar(
                                            radius: 5,
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        backgroundImage: AssetImage(
                                            'assets/images/cool-profile-picture-awled9dwo4qq2yv2.jpg'),
                                        foregroundColor: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                            height: 240,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/cool-profile-picture-awled9dwo4qq2yv2.jpg"),
                                    fit: BoxFit.cover)),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width:
                                        40, // Set the total width including the border
                                    height:
                                        40, // Set the total height including the border
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.blue,
                                          width: 2.0 // Set the border color
                                          // Set the border width
                                          ),
                                    ),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: CircleAvatar(
                                        radius: 70,
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: CircleAvatar(
                                            radius: 5,
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        backgroundImage: AssetImage(
                                            'assets/images/desktop-wallpaper-cool-boy-boy-pic.jpg'),
                                        foregroundColor: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Container(
                            height: 240,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/unnamed.jpg"),
                                    fit: BoxFit.cover)),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    width:
                                        40, // Set the total width including the border
                                    height:
                                        40, // Set the total height including the border
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.blue,
                                          width: 2.0 // Set the border color
                                          // Set the border width
                                          ),
                                    ),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: CircleAvatar(
                                        radius: 70,
                                        child: Align(
                                          alignment: Alignment.bottomRight,
                                          child: CircleAvatar(
                                            radius: 5,
                                            backgroundColor: Colors.green,
                                          ),
                                        ),
                                        backgroundImage: AssetImage(
                                            'assets/images/pexels-photo-771742.webp'),
                                        foregroundColor: Colors.blue,
                                      ),
                                    ),
                                  ),
                                ))),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                            left: 5,
                          ),
                          child: Container(
                              height: 240,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/dark-aesthetic-boy-pfp-27.jpg"),
                                    fit: BoxFit.cover,
                                  )),
                              child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width:
                                          40, // Set the total width including the border
                                      height:
                                          40, // Set the total height including the border
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Colors.blue,
                                            width: 2.0 // Set the border color
                                            // Set the border width
                                            ),
                                      ),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: CircleAvatar(
                                          radius: 70,
                                          child: Align(
                                            alignment: Alignment.bottomRight,
                                            child: CircleAvatar(
                                              radius: 5,
                                              backgroundColor: Colors.green,
                                            ),
                                          ),
                                          backgroundImage: AssetImage(
                                              'assets/images/dark-aesthetic-boy-pfp-27.jpg'),
                                          foregroundColor: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ))))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8, top: 12),
                child: Row(
                  children: [
                    Text(
                      'Ahmad commented on this post',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.black),
                    )
                  ],
                ),
              ),
              Container(
                height: 420,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/cool-profile-picture-awled9dwo4qq2yv2.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                        Container(
                            width:
                            40, // Set the total width including the border
                            height:
                            40, // Set the total height including the border
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.blue,
                                  width: 2.0 // Set the border color
                                // Set the border width
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: CircleAvatar(
                                radius: 70,
                                child: Align(
                                  alignment: Alignment.bottomRight,
                                  child: CircleAvatar(
                                    radius: 5,
                                    backgroundColor: Colors.green,
                                  ),
                                ),
                                backgroundImage: AssetImage(
                                    'assets/images/pexels-photo-771742.webp'),
                                foregroundColor: Colors.blue,
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(children: [
                            Text(
                              'Adeel Awan',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Row(children: [
                                Text(
                                  '4 h ago',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                SizedBox(width: 5,),
                                Icon(Icons.wordpress,color: Colors.grey,size: 15,)
                              ],),
                            ),

                          ],
                          ),
                        ),
                      ],),

                      Icon(Icons.menu,color: Colors.white,)

                    ],
                  ),
                ),

              )
              ,
              Row(
                children: [


                SizedBox(width: 20,),
                  TextButton(onPressed: (){

                  },child:
                  Text('Like',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.grey

                    ),

                  ),
                  ),


                  Icon(
                      Icons.thumb_up,color: Colors.grey,
                  ),

                  SizedBox(width: 20,),
                  TextButton(onPressed: (){

                  },child:
                  Text('Comment',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey

                    ),

                  ),
                  ),


                  Icon(
                    Icons.comment,color: Colors.grey,
                  ),


    SizedBox(width: 20,),
                  TextButton(onPressed: (){

                  },child:
                  Text('Share',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey

                    ),

                  ),
                  ),


                  Icon(
                    Icons.share,color: Colors.grey,
                  ),
                ],
              ),
              Divider(height: 5,),
              Container(
                height: 420,
                width: 400,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/unnamed.jpg'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Container(
                              width:
                              40, // Set the total width including the border
                              height:
                              40, // Set the total height including the border
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: Colors.blue,
                                    width: 2.0 // Set the border color
                                  // Set the border width
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: CircleAvatar(
                                  radius: 70,
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: CircleAvatar(
                                      radius: 5,
                                      backgroundColor: Colors.green,
                                    ),
                                  ),
                                  backgroundImage: AssetImage(
                                      'assets/images/unnamed.jpg'),
                                  foregroundColor: Colors.blue,
                                ),
                              )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(children: [
                              Text(
                                'Raja Dawood',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Row(children: [
                                  Text(
                                    '45 min ago',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                  SizedBox(width: 5,),
                                  Icon(Icons.wordpress,color: Colors.grey,size: 15,)
                                ],),
                              ),

                            ],
                            ),
                          ),
                        ],),

                      Icon(Icons.menu,color: Colors.white,)

                    ],
                  ),
                ),

              )
              ,
              Row(
                children: [


                  SizedBox(width: 20,),
                  TextButton(onPressed: (){

                  },child:
                  Text('Like',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey

                    ),

                  ),
                  ),


                  Icon(
                    Icons.thumb_up,color: Colors.grey,
                  ),

                  SizedBox(width: 20,),
                  TextButton(onPressed: (){

                  },child:
                  Text('Comment',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey

                    ),

                  ),
                  ),


                  Icon(
                    Icons.comment,color: Colors.grey,
                  ),


                  SizedBox(width: 25
                    ,),
                  TextButton(onPressed: (){

                  },child:
                  Text('Share',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey

                    ),

                  ),
                  ),


                  Icon(
                    Icons.share,color: Colors.grey,
                  ),
                ],
              ),

            ],
          ),
        ));
  }
}

void main() {
  runApp(const MaterialApp(
    home: FacebookUI(),
  ));
}
