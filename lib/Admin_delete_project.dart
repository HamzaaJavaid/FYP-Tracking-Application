import 'package:flutter/material.dart';
import 'admin_dashboard.dart';
import 'package:expandable/expandable.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Delete_project extends StatefulWidget {
  String name_of_eval ;


   Delete_project({Key? key,required this.name_of_eval}) : super(key: key);

  @override
  _Delete_projectState createState() => _Delete_projectState();
}

class _Delete_projectState extends State<Delete_project> {


  Widget Expand_tiles(String title,String name,double height,double width,Color color){
    return Row(
      children: [

        Text(title,style: TextStyle(fontWeight: FontWeight.bold),),
        SizedBox(width: 8,),
        Container(
          width: width,
          height: height,

          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(20)),


          ),
          child: Padding(padding:EdgeInsets.all(13),child: Text(name,textAlign: TextAlign.center,style: TextStyle(color: Colors.white),)),
        ),
      ],
    );

  }

  Widget full_tile_model(String supervisor_name,String start_date,String end_date,String members,String description){
    return Column(
      children: [
        Row(
          children: [
            SizedBox(width: 67,),
            Expand_tiles("SuperVisor",supervisor_name,47,140,Colors.greenAccent),

          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            SizedBox(width: 7,),
            Expand_tiles("START DATE",start_date,57,110,Colors.orange),
            SizedBox(width: 5,),
            Expand_tiles("END DATE",end_date,57,110,Colors.orange),

          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            SizedBox(width: 7,),
            Expand_tiles("MEMBERS",members,57,310,Colors.amber),


          ],
        ),

        SizedBox(height: 10,),
        Row(
          children: [
            SizedBox(width: 4,),
            Expand_tiles("DESCRIPTION",description,117,300,Colors.deepPurpleAccent),


          ],
        ),
        SizedBox(height: 10,),

        SizedBox(height: 20,),

      ],
    );
  }
  final firestor = FirebaseFirestore.instance;

  final search_converse_controller = TextEditingController();


  late String comment_1 ;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          title: Text(' PROJECT EVALUATION',style: TextStyle(
              color: Colors.greenAccent
          ),),
        ),
        body: SafeArea(

              child: Column(
                children: [

                  SizedBox(height: 20,),
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

                    Expanded(
                      child: Padding(padding:EdgeInsets.all(8),child: TextField(
                        controller: search_converse_controller,
                        onChanged: (value){
                          setState(() {
                          });
                        },
                        decoration: InputDecoration(
                            hintText: "SEARCH Projects",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30))
                            )
                        ),
                      ),),),

                    SizedBox(width: 10,)
                  ],),

                  SizedBox(height: 10,),
                  Divider(color: Colors.black,thickness: 0.3,endIndent: 30,indent: 30,),
                  SizedBox(height: 20,),

                  //PROJECTS TILES


                  Expanded(child: StreamBuilder(
                    stream: firestor.collection("Projects").snapshots(),
                    builder: (context , AsyncSnapshot<QuerySnapshot> snapshot){
                      if(snapshot.connectionState == ConnectionState.waiting){
                        return Center(child: CircularProgressIndicator(),);
                      }
                      return snapshot.hasData?
                      ListView.builder(

                          shrinkWrap: true,
                          itemCount: snapshot.data!.docs.length,
                          itemBuilder: (context , index){

                            String title_name = snapshot.data!.docs[index]['Title'];
                            String supervisor_name  = snapshot.data!.docs[index]['Supervisor'];

                            String start_date = snapshot.data!.docs[index]['Start date'];
                            String end_date  = snapshot.data!.docs[index]['End date'];


                            String members = snapshot.data!.docs[index]['Members'];
                            String description  = snapshot.data!.docs[index]['Description'];
                            print("HELLO");

                            print(title_name);
                            print(supervisor_name);
                            print(members);
                            print(start_date);
                            print(end_date);
                            print(description);
                            print(snapshot.data!.docs.length);




                            if(search_converse_controller.text.isEmpty){
                              // scroll_Controller.jumpTo(scroll_Controller.position.maxScrollExtent);
                              return Column(
                                children: [
                                  ListTile(
                                    title: Text("$title_name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.greenAccent),),
                                    subtitle: Text(members),
                                  ),

                                  Center(
                                    child: MaterialButton(
                                      color: Colors.greenAccent,
                                      height: 40,
                                      minWidth: 180,
                                      elevation: 12,
                                      shape: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        borderSide: BorderSide(color: Colors.transparent),
                                      ),
                                      onPressed: () {
                                        showModalBottomSheet(
                                            shape: const RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.vertical(top: Radius.circular(25.0))),
                                            backgroundColor: Colors.greenAccent.withOpacity(0.9),
                                            context: context,
                                            isScrollControlled: true,
                                            builder: (context) => Padding(
                                              padding: EdgeInsets.only(top: 20,  right: 20,  left: 20,
                                                  bottom: MediaQuery.of(context).viewInsets.bottom),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children:  [

                                                  Padding(padding:EdgeInsets.all(8),child: TextField(
                                                    onChanged: (value){
                                                      setState(() {
                                                        comment_1 = value;
                                                      });
                                                    },
                                                    decoration: InputDecoration(
                                                        helperMaxLines: 4,
                                                        hintText: "Add Your Response",
                                                        border: OutlineInputBorder(
                                                            borderRadius: BorderRadius.all(Radius.circular(30))
                                                        )
                                                    ),
                                                  ),),
                                                  MaterialButton(
                                                    onPressed: () {

                                                      firestor.collection('Projects').doc(snapshot.data!.docs[index]['id'].toString()).update({
                                                        "${widget.name_of_eval}" : comment_1,
                                                      });

                                                      Navigator.pop(context);

                                                    },
                                                    color: Colors.white,
                                                    height: 40,
                                                    minWidth: 180,
                                                    elevation: 12,
                                                    child: Text("Submit Response"),
                                                    shape: OutlineInputBorder(
                                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                                      borderSide: BorderSide(color: Colors.transparent),
                                                    ),
                                                  ),
                                                  SizedBox(height: 30,),
                                                ],
                                              ),
                                            ));
                                      },
                                      child: const Text('Write Your Response'),
                                    ),
                                  )





                                ],
                              );

                            }
                            else if(title_name.toLowerCase().contains(search_converse_controller.text.toLowerCase())){
                              //scroll_Controller.jumpTo(scroll_Controller.position.maxScrollExtent);
                              return Column(
                                children: [
                                  ListTile(
                                    title: Text("$title_name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 26,color: Colors.greenAccent),),
                                    subtitle: Text(members),
                                  ),

                                  Center(
                                    child: MaterialButton(
                                      color: Colors.greenAccent,
                                      height: 40,
                                      minWidth: 180,
                                      elevation: 12,
                                      shape: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(Radius.circular(20)),
                                        borderSide: BorderSide(color: Colors.transparent),
                                      ),
                                      onPressed: () {
                                        showModalBottomSheet(
                                            shape: const RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.vertical(top: Radius.circular(25.0))),
                                            backgroundColor: Colors.greenAccent.withOpacity(0.9),
                                            context: context,
                                            isScrollControlled: true,
                                            builder: (context) => Padding(
                                              padding: EdgeInsets.only(top: 20,  right: 20,  left: 20,
                                                  bottom: MediaQuery.of(context).viewInsets.bottom),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisSize: MainAxisSize.min,
                                                children:  [

                                                  Padding(padding:EdgeInsets.all(8),child: TextField(
                                                    onChanged: (value){
                                                      setState(() {
                                                        comment_1 = value;
                                                      });
                                                    },
                                                    decoration: InputDecoration(
                                                        helperMaxLines: 4,
                                                        hintText: "Add Your Response",
                                                        border: OutlineInputBorder(
                                                            borderRadius: BorderRadius.all(Radius.circular(30))
                                                        )
                                                    ),
                                                  ),),
                                                  MaterialButton(
                                                    onPressed: () {

                                                      firestor.collection('Projects').doc(snapshot.data!.docs[index]['id'].toString()).update({
                                                        "${widget.name_of_eval}" : comment_1,
                                                      });

                                                      Navigator.pop(context);

                                                    },
                                                    color: Colors.white,
                                                    height: 40,
                                                    minWidth: 180,
                                                    elevation: 12,
                                                    child: Text("Submit Response"),
                                                    shape: OutlineInputBorder(
                                                      borderRadius: BorderRadius.all(Radius.circular(20)),
                                                      borderSide: BorderSide(color: Colors.transparent),
                                                    ),
                                                  ),
                                                  SizedBox(height: 30,),
                                                ],
                                              ),
                                            ));
                                      },
                                      child: const Text('Write Your Response'),
                                    ),
                                  )





                                ],
                              );

                            }
                            else{
                              //scroll_Controller.jumpTo(scroll_Controller.position.maxScrollExtent);
                              return Container();
                            }


                          }

                      )
                          : Container(
                        height: 200,
                        width: 200,
                        child: Text("Wrong"),
                      );


                    },

                  ),),


                  SizedBox(height: 10,),
                  Divider(color: Colors.black,thickness: 0.3,endIndent: 30,indent: 30,),



                  //SEARCH TILES........................................

                  /*
                  ExpandablePanel(
                    header:  Text("System Remodeling Application",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.cyanAccent)),

                    collapsed: Text("This Project is about the ARTIFICIAL INTELLIGENCE .....", softWrap: true, maxLines: 1000, overflow: TextOverflow.ellipsis,),
                    expanded: full_tile_model("Sir Dilawar ","23/11/2022","23,11,2023","HAMZA , AHSEN,HAROON","PROJECT DESCRIPTION"),
                  ),
                  SizedBox(height: 10,),
                  Divider(color: Colors.black,thickness: 0.3,endIndent: 30,indent: 30,),
                  SizedBox(height: 10,),
                  ExpandablePanel(
                    header: Text("AI MODELING",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.cyanAccent)),
                    collapsed: Text("This Project is about the ARTIFICIAL INTELLIGENCE .....", softWrap: true, maxLines: 1000, overflow: TextOverflow.ellipsis,),
                    expanded: full_tile_model("Sir IFTIKHAR ","23/11/2022","23,11,2023","ALAN , MICHAEL,JASSON","PROJECT DESCRIPTION # 2"),
                  ),
                  Divider(color: Colors.black,thickness: 0.3,endIndent: 30,indent: 30,),
                  SizedBox(height: 10,),
                  ExpandablePanel(
                    header: Text("AI MODELING",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.cyanAccent)),
                    collapsed: Text("This Project is about the ARTIFICIAL INTELLIGENCE .....", softWrap: true, maxLines: 1000, overflow: TextOverflow.ellipsis,),
                    expanded: full_tile_model("Sir IFTIKHAR ","23/11/2022","23,11,2023","ALAN , MICHAEL,JASSON","PROJECT DESCRIPTION # 2"),
                  ),
                  Divider(color: Colors.black,thickness: 0.3,endIndent: 30,indent: 30,),
                  SizedBox(height: 10,),
                  ExpandablePanel(
                    header: Text("AI MODELING",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.cyanAccent)),
                    collapsed: Text("This Project is about the ARTIFICIAL INTELLIGENCE .....", softWrap: true, maxLines: 1000, overflow: TextOverflow.ellipsis,),
                    expanded: full_tile_model("Sir IFTIKHAR ","23/11/2022","23,11,2023","ALAN , MICHAEL,JASSON","PROJECT DESCRIPTION # 2"),
                  ),
                  Divider(color: Colors.black,thickness: 0.3,endIndent: 30,indent: 30,),
                  SizedBox(height: 10,),
                  ExpandablePanel(
                    header: Text("AI MODELING",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.cyanAccent)),
                    collapsed: Text("This Project is about the ARTIFICIAL INTELLIGENCE .....", softWrap: true, maxLines: 1000, overflow: TextOverflow.ellipsis,),
                    expanded: full_tile_model("Sir IFTIKHAR ","23/11/2022","23,11,2023","ALAN , MICHAEL,JASSON","PROJECT DESCRIPTION # 2"),
                  ),


                   */
                  //SEARCH TILES ENDS......................................



                ],
              ),

        ),
      ),
    );
  }
}

