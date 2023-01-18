import 'package:flutter/material.dart';
import 'admin_dashboard.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';



class Admin_create_project extends StatefulWidget {
  const Admin_create_project({Key? key}) : super(key: key);

  @override
  _Admin_create_projectState createState() => _Admin_create_projectState();
}

class _Admin_create_projectState extends State<Admin_create_project> {

  Widget Row_Tile(IconData icon , String label,String hint,String helper, Function(String) onChanged){
    return Row(
      children: [
        SizedBox(width: 10,),
        Icon(icon,size: 30,),
        SizedBox(width: 10,),
        Expanded(child: TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
              hintText: hint,
              labelText: label,
              helperText: helper,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))
              )
          ),
        )),
        SizedBox(width: 10,),

      ],
    );
  }
  late String title ;
  late String supervisor ;
  late String members ;
  late String start_date ;
  late String end_date ;
  late String description ;
  final firestor = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text('NEW PROJECT',style: TextStyle(
            color: Colors.greenAccent
          ),),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(

                children: [
                  SizedBox(height: 10,),
                  Row(children: [
                    MaterialButton(onPressed: (){
                      setState(() {
                        Navigator.pop(context);

                      });
                    },
                      child: CircleAvatar(radius: 30,
                        backgroundColor: Colors.greenAccent,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],),


                    CircleAvatar(
                      backgroundColor: Colors.greenAccent,
                      radius: 80,
                      child: Icon(Icons.create_rounded,color: Colors.white,size: 40,),
                    ),

                  SizedBox(height: 20,),
                  Row_Tile(Icons.drive_file_rename_outline,"Title","Project Name/Title",'',(value){
                    setState(() {
                    title = value;
                  });
                  }),//DONE
                  SizedBox(height: 20,),
                  Row_Tile(Icons.person_outline,"Supervisor","Project SuperVisor","",(value){
                    setState(() {
                      supervisor = value;
                    });
                  }),
                  SizedBox(height: 20,),
                  Row_Tile(Icons.group_sharp,"Members","Member Names","",(value){
                    setState(() {
                      members = value;
                    });
                  }),
                  SizedBox(height: 20,),
                  Row_Tile(Icons.timelapse,"Start date","Starting date of project","",(value){
                    setState(() {
                      start_date = value;
                    });
                  }),
                  SizedBox(height: 20,),
                  Row_Tile(Icons.calendar_today_sharp,"End date","Ending date of project","",(value){
                    setState(() {
                      end_date = value;
                    });
                  }),
                  SizedBox(height: 20,),
                  Row_Tile(Icons.description_rounded,"Description","Project Description","Projects Details e.g Starting data ,ending date,\nMembers,Project descriptions",(value){
                    setState(() {
                      description = value;
                    });
                  }),
                  SizedBox(height: 16,),
                  MaterialButton(onPressed: (){



                    String id = DateTime.now().millisecondsSinceEpoch.toString();
                    firestor.collection("Projects").doc(id).set({
                      "Description":description,
                      "End date":end_date,
                      "Start date":start_date,
                      "Members":members,
                      "Supervisor":supervisor,
                      "id": id,
                      "Title":title,
                      "1st Progress Report Comments":"_",
                      "2nd Progress Report Comments":"_",
                      "3rd Progress Report Comments":"_",
                      "Final Viva":"_"

                    });
                    //dialog for succesful creation
                    Navigator.pop(context);




                  },
                    color: Colors.greenAccent,
                    height: 70,
                    minWidth: 280,
                    elevation: 12,
                    shape: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    child: Text('Create',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        color: Colors.white
                    ),),
                  ),
                  SizedBox(height: 20,),
                ],
              ),
            ),
          )
        ),
      ),
    );
  }
}
