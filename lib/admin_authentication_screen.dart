

import 'package:flutter/material.dart';
import 'package:fyp_tracker/admin_dashboard.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Admin_authentication_screen extends StatefulWidget {
  const Admin_authentication_screen({Key? key}) : super(key: key);

  @override
  _Admin_authentication_screenState createState() => _Admin_authentication_screenState();
}

class _Admin_authentication_screenState extends State<Admin_authentication_screen> {
  late String email ;
  late String password;
  FirebaseAuth auth  = FirebaseAuth.instance;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text('ADMIN LOGIN',style: TextStyle(color: Colors.black),),
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
                      Icon(Icons.email_outlined,color: Colors.deepPurpleAccent,size: 37,),
                      SizedBox(width: 20,),
                      Expanded(child: TextField(
                        onChanged: (value){
                          setState(() {
                            email = value;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: "EMAIL",
                          hintText: "Enter Your Email",
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
                      Icon(Icons.password,color: Colors.redAccent,size: 37,),
                      SizedBox(width: 20,),
                      Expanded(child: TextField(
                        onChanged: (value){
                          setState(() {
                            password = value;
                          });
                        },
                        obscureText: true,
                        decoration: InputDecoration(

                          labelText: "PASSWORD",
                            hintText: "Enter Your Password",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20))
                            )
                        ),

                      ),),
                      SizedBox(width: 20,),

                    ],
                  ),
                  SizedBox(height: 100,),
                  MaterialButton(onPressed: ()async{

                    //Navigator.push(context, MaterialPageRoute(builder: (context)=>Admin_dashboard()));
                  //print("EMAIL IS :- $email");
                  //print("PASSWORD IS :- $password");

                 try{
                   if(email.isEmpty ){
                     print("Empty Email");
                   }
                   else if(password.isEmpty){
                     print("Empty Pawssword");
                   }
                   else{
                     final log_user = await auth.signInWithEmailAndPassword(email: email, password: password);
                     if(log_user!=null){
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>Admin_dashboard()));
                     }
                     else{
                       print("Some Error");
                     }
                   }
                 }

              catch(e){
                   print(e);}





                  },
                  color: Colors.greenAccent,
                    height: 70,
                    minWidth: 280,
                    elevation: 12,
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    child: Text('LOGIN'  ,style: TextStyle(
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
