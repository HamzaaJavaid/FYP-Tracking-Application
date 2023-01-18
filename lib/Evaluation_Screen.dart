import 'package:flutter/material.dart';
import 'Admin_delete_project.dart';


class Evaluation_Screen extends StatefulWidget {
  const Evaluation_Screen({Key? key}) : super(key: key);

  @override
  _Evaluation_ScreenState createState() => _Evaluation_ScreenState();
}

class _Evaluation_ScreenState extends State<Evaluation_Screen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar(backgroundColor : Colors.greenAccent,title: Text('Evaluation Screen'),centerTitle: true,),
       body: Center(child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Row(children: [
             MaterialButton(onPressed: (){
               setState(() {
                 Navigator.pop(context);

               });
             },
               child: CircleAvatar(radius: 30,
                 backgroundColor: Colors.orange,
                 child: Icon(
                   Icons.arrow_back,
                   color: Colors.white,
                 ),
               ),
             ),

           ],),
           MaterialButton(
             onPressed: (){

               Navigator.push(context, MaterialPageRoute(builder: (context)=>Delete_project(name_of_eval: "Proposal Defense Comments")));

             },
             child: Text('Proposal Defense',style: TextStyle(
               fontSize: 20,
               color: Colors.white
             ),),
             color: Colors.greenAccent,
             height: 90,
             minWidth: 280,
             elevation: 13,
             shape: OutlineInputBorder(
               borderRadius: BorderRadius.all(Radius.circular(20)),
               borderSide: BorderSide(color: Colors.transparent),
             ),
           ),
           SizedBox(height: 20,),
           MaterialButton(
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Delete_project(name_of_eval: "1st Progress Report Comments")));


             },
             child: Text('1st Progress Report\n       Presentation',style: TextStyle(
                 fontSize: 20,
                 color: Colors.white
             ),),
             color: Colors.greenAccent,
             height: 90,
             minWidth: 280,
             elevation: 13,
             shape: OutlineInputBorder(
               borderRadius: BorderRadius.all(Radius.circular(20)),
               borderSide: BorderSide(color: Colors.transparent),
             ),
           ),
           SizedBox(height: 20,),
           MaterialButton(
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Delete_project(name_of_eval: "2nd Progress Report Comments")));

             },
             child: Text('2nd Progress Report\n       Presentation',style: TextStyle(
                 fontSize: 20,
                 color: Colors.white
             ),),
             color: Colors.greenAccent,
             height: 90,
             minWidth: 280,
             elevation: 13,
             shape: OutlineInputBorder(
               borderRadius: BorderRadius.all(Radius.circular(20)),
               borderSide: BorderSide(color: Colors.transparent),
             ),
           ),
           SizedBox(height: 20,),
           MaterialButton(
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Delete_project(name_of_eval: "3rd Progress Report Comments")));

             },
             child: Text('3rd Progress Report\n       Presentation',style: TextStyle(
                 fontSize: 20,
                 color: Colors.white
             ),),
             color: Colors.greenAccent,
             height: 90,
             minWidth: 280,
             elevation: 13,
             shape: OutlineInputBorder(
               borderRadius: BorderRadius.all(Radius.circular(20)),
               borderSide: BorderSide(color: Colors.transparent),
             ),
           ),
           SizedBox(height: 20,),
           MaterialButton(
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>Delete_project(name_of_eval: "Final Viva")));
             },
             child: Text('Final Viva',style: TextStyle(
                 fontSize: 20,
                 color: Colors.white
             ),),
             color: Colors.greenAccent,
             height: 90,
             minWidth: 280,
             elevation: 13,
             shape: OutlineInputBorder(
               borderRadius: BorderRadius.all(Radius.circular(20)),
               borderSide: BorderSide(color: Colors.transparent),
             ),
           ),



         ],
       ),)

      ),
    );
  }
}
