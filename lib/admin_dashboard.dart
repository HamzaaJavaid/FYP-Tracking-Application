import 'dart:io';
import 'package:fyp_tracker/Admin_delete_project.dart';
import 'package:fyp_tracker/Evaluation_Screen.dart';

import 'Admin_delete_project.dart';
import 'package:flutter/material.dart';
import 'Admin_Create_project.dart';
import 'Search_Project.dart';
class Admin_dashboard extends StatefulWidget {
  const Admin_dashboard({Key? key}) : super(key: key);

  @override
  _Admin_dashboardState createState() => _Admin_dashboardState();
}

class _Admin_dashboardState extends State<Admin_dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Builder(
          builder: (context)=>Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.white,
              title: Text('ADMIN DASHBOARD',style: TextStyle(color: Colors.greenAccent),),
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

                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Admin_create_project()));


                            },
                            child: Container(

                              height: 180,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.greenAccent.withOpacity(0.9),
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
                                        Icon(Icons.create,size: 60,color: Colors.white,),



                                      ],
                                    ),
                                    Text('Create New Project \nRecord in Database',style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          width: 130,
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
                                        Text('Create Project',style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w300
                                            ,
                                            color: Colors.white,
                                            letterSpacing: 0.4
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Search_project()));

                            },
                            child: Container(

                              height: 180,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.orangeAccent.withOpacity(0.7),
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
                                        Icon(Icons.search,size: 60,color: Colors.white,),



                                      ],
                                    ),
                                    Text('Search Project In \nDatabase',style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          width: 130,
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
                                        Text('Search Project',style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w300
                                            ,
                                            color: Colors.white,
                                            letterSpacing: 0.1
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

                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Evaluation_Screen()));


                            },
                            child: Container(

                              height: 180,
                              width: 160,
                              decoration: BoxDecoration(
                                  color: Colors.amberAccent,
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
                                        Icon(Icons.comment_bank_outlined,size: 60,color: Colors.white,),



                                      ],
                                    ),
                                    Text('  Evaluation & Comments \n  from Teachers',style: TextStyle(
                                        color: Colors.white70,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          width: 130,
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
                                        Text('Project Evaluation',style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w300
                                            ,
                                            color: Colors.white,
                                            letterSpacing: 0.3
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
                                    Text('Take Care\nSee Yah Soon....',style: TextStyle(
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
                                        Text('EXIT ',style: TextStyle(
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
