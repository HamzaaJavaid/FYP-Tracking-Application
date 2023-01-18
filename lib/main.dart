import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fyp_tracker/admin_authentication_screen.dart';
import 'Student_authentication_screen.dart';
import 'admin_dashboard.dart';
import 'about_us.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Builder(
          builder: (context)=>Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.white,
              title: Text('MAIN DASHBOARD',style: TextStyle(color: Colors.black),),
            ),
            body: SafeArea(
                child: Center(
                  child: Column(
                    children: [
                      SizedBox(height: 30,),
                      CircleAvatar(
                          radius: 80,
                          child: Image(
                            image: AssetImage('Images/logo.jpg'),
                          )),
                      SizedBox(height: 30,),
                      Divider(
                        height: 3,
                        indent: 70,
                        endIndent: 70,
                        color: Colors.black,
                      ),
                      SizedBox(height: 40,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: (){

                              Navigator.push(context, MaterialPageRoute(builder: (context)=>  Admin_authentication_screen()));

                            },
                            child: Container(

                              height: 180,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.lightGreenAccent.withOpacity(0.9),
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        spreadRadius: 6,
                                        blurRadius: 8,
                                        offset: Offset(3,3)
                                    )
                                  ]

                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          width: 110,
                                          height: 70,
                                          decoration: BoxDecoration(
                                              color: Colors.white24,
                                              borderRadius: BorderRadius.all(Radius.circular(20)),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black12,
                                                    spreadRadius: 6,
                                                    blurRadius: 8,
                                                    offset: Offset(3,3)
                                                )
                                              ]

                                          ),
                                        ),
                                        Icon(Icons.admin_panel_settings_outlined,size: 60,color: Colors.white,),



                                      ],
                                    ),
                                    Text('System Operator & \nAdministration Controls',style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.white24,
                                              borderRadius: BorderRadius.all(Radius.circular(20)),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black12,
                                                    spreadRadius: 3,
                                                    blurRadius: 8,
                                                    offset: Offset(3,3)
                                                )
                                              ]

                                          ),
                                        ),
                                        Text('ADMIN',style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w300
                                            ,
                                            color: Colors.white,
                                            letterSpacing: 1
                                        ),),



                                      ],
                                    ),


                                  ],

                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Student_authentication_screen()));
                            },
                            child: Container(

                              height: 180,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.blueAccent.withOpacity(0.7),
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        spreadRadius: 6,
                                        blurRadius: 8,
                                        offset: Offset(3,3)
                                    )
                                  ]

                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          width: 110,
                                          height: 70,
                                          decoration: BoxDecoration(
                                              color: Colors.white24,
                                              borderRadius: BorderRadius.all(Radius.circular(20)),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black12,
                                                    spreadRadius: 6,
                                                    blurRadius: 8,
                                                    offset: Offset(3,3)
                                                )
                                              ]

                                          ),
                                        ),
                                        Icon(Icons.school_outlined,size: 60,color: Colors.white,),



                                      ],
                                    ),
                                    Text('Institution StakeHolders\nStudents',style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.white24,
                                              borderRadius: BorderRadius.all(Radius.circular(20)),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black12,
                                                    spreadRadius: 3,
                                                    blurRadius: 8,
                                                    offset: Offset(3,3)
                                                )
                                              ]

                                          ),
                                        ),
                                        Text('STUDENTS',style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w300
                                            ,
                                            color: Colors.white,
                                            letterSpacing: 1
                                        ),),



                                      ],
                                    ),


                                  ],

                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30,),
                      /*GestureDetector(
                      onTap: (){
                        exit(0);
                      },
                      child: Container(

                        height: 180,
                        width: 160,
                        decoration: BoxDecoration(
                            color: Colors.redAccent,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  spreadRadius: 6,
                                  blurRadius: 8,
                                  offset: Offset(3,3)
                              )
                            ]

                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Stack(
                                alignment: Alignment.center,
                                children: [
                                  Container(
                                    width: 110,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.white24,
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black12,
                                              spreadRadius: 6,
                                              blurRadius: 8,
                                              offset: Offset(3,3)
                                          )
                                        ]

                                    ),
                                  ),
                                  Icon(Icons.close,size: 60,color: Colors.white,),


                                ],
                              ),
                              Divider(
                                height: 3,
                                indent: 30,
                                endIndent: 30,
                                color: Colors.white,

                              ),
                              Text('EXIT',style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w300
                                  ,
                                  color: Colors.white,
                                  letterSpacing: 3
                              ),)

                            ],

                          ),
                        ),
                      ),
                    ),*/
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: (){


                              Navigator.push(context, MaterialPageRoute(builder: (context)=> About_us()));
                            },
                            child: Container(

                              height: 180,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.deepPurpleAccent,
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        spreadRadius: 6,
                                        blurRadius: 8,
                                        offset: Offset(3,3)
                                    )
                                  ]

                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          width: 110,
                                          height: 70,
                                          decoration: BoxDecoration(
                                              color: Colors.white24,
                                              borderRadius: BorderRadius.all(Radius.circular(20)),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black12,
                                                    spreadRadius: 6,
                                                    blurRadius: 8,
                                                    offset: Offset(3,3)
                                                )
                                              ]

                                          ),
                                        ),
                                        Icon(Icons.group_outlined,size: 60,color: Colors.white,),



                                      ],
                                    ),
                                    Text('Get to Know Us',style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.white24,
                                              borderRadius: BorderRadius.all(Radius.circular(20)),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black12,
                                                    spreadRadius: 3,
                                                    blurRadius: 8,
                                                    offset: Offset(3,3)
                                                )
                                              ]

                                          ),
                                        ),
                                        Text('ABOUT US',style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w300
                                            ,
                                            color: Colors.white,
                                            letterSpacing: 1
                                        ),),



                                      ],
                                    ),


                                  ],

                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          GestureDetector(
                            onTap: (){

                              exit(0);
                            },
                            child: Container(

                              height: 180,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.all(Radius.circular(20)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        spreadRadius: 6,
                                        blurRadius: 8,
                                        offset: Offset(3,3)
                                    )
                                  ]

                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [

                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          width: 110,
                                          height: 70,
                                          decoration: BoxDecoration(
                                              color: Colors.white24,
                                              borderRadius: BorderRadius.all(Radius.circular(20)),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black12,
                                                    spreadRadius: 6,
                                                    blurRadius: 8,
                                                    offset: Offset(3,3)
                                                )
                                              ]

                                          ),
                                        ),
                                        Icon(Icons.close,size: 60,color: Colors.white,),



                                      ],
                                    ),
                                    Text('See You Soon',style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 40,
                                          decoration: BoxDecoration(
                                              color: Colors.white24,
                                              borderRadius: BorderRadius.all(Radius.circular(20)),
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.black12,
                                                    spreadRadius: 3,
                                                    blurRadius: 8,
                                                    offset: Offset(3,3)
                                                )
                                              ]

                                          ),
                                        ),
                                        Text('EXIT',style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w300
                                            ,
                                            color: Colors.white,
                                            letterSpacing: 1
                                        ),),



                                      ],
                                    ),


                                  ],

                                ),
                              ),
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                )
            ),
          ),
        )
    );
  }
}
