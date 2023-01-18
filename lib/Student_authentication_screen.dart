import 'package:flutter/material.dart';
import 'package:fyp_tracker/Student_screen.dart';
import 'Student_search_project.dart';

class Student_authentication_screen extends StatefulWidget {
  const Student_authentication_screen({Key? key}) : super(key: key);

  @override
  _Student_authentication_screenState createState() => _Student_authentication_screenState();
}

class _Student_authentication_screenState extends State<Student_authentication_screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text('STUDENT LOGIN',style: TextStyle(color: Colors.black),),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    SizedBox(height: 50,),
                    CircleAvatar(
                      radius: 80,
                      child: Image(
                        image: AssetImage('Images/logo.jpg'),
                      ),
                    ),
                    SizedBox(height: 50,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.person,color: Colors.yellow,size: 37,),
                        SizedBox(width: 20,),
                        Expanded(child: TextField(
                          decoration: InputDecoration(
                              labelText: "NAME",
                              hintText: "Enter Your Name",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              )
                          ),

                        ),),
                        SizedBox(width: 20,),

                      ],
                    ),
                    SizedBox(height: 50,),
                    Row(
                      children: [
                        SizedBox(width: 20,),
                        Icon(Icons.numbers,color: Colors.blueAccent,size: 37,),
                        SizedBox(width: 20,),
                        Expanded(child: TextField(
                          decoration: InputDecoration(
                              labelText: "REG-NO",
                              hintText: "Enter Your Registration Number",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              )
                          ),

                        ),),
                        SizedBox(width: 20,),

                      ],
                    ),
                    SizedBox(height: 100,),
                    MaterialButton(onPressed: (){

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>student_Search_project()));

                    },
                      color: Colors.deepPurpleAccent,
                      height: 70,
                      minWidth: 280,
                      elevation: 12,
                      shape: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                      child: Text('LOGIN',style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: Colors.white
                      ),),
                    ),
                    SizedBox(height: 50,),
                  ],
                ),
              ),
            )
        ),
      ),
    );
  }
}
