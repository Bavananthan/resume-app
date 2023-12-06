import 'package:flutter/material.dart';
import 'package:mypage_view/Projects/project1.dart';
import 'package:mypage_view/Projects/project2.dart';
import 'package:mypage_view/Projects/project3.dart';
import 'package:mypage_view/Projects/project4.dart';
import 'package:mypage_view/Projects/project5.dart';
import 'package:mypage_view/Widgets/Avatar.dart';
import 'package:mypage_view/Widgets/Myappbar.dart';
import 'package:mypage_view/pages/Reference.dart';
import 'package:mypage_view/pages/skills.dart';

class projects extends StatefulWidget {
  const projects({super.key});

  @override
  State<projects> createState() => _projectsState();
}

class _projectsState extends State<projects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Myappbar(),
            Expanded(
              child: Container(
                height: 1000,
                width: 350,
                padding: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35),
                      topRight: Radius.circular(35),
                    )
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Avatar(),
                      SizedBox(height: 15,),
                      Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ARMSTRONG BAVANANTHAN",style: TextStyle(
                              fontSize: 20,
                            ),),
                            Text("Softwere Engineer",style: TextStyle(
                              fontSize: 20,
                            ),),
                            Text("Projects",style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 20,
                            ),),
                            InkWell(
                              child:Text("1.Qr base bus ticketing system-- 2023 (in process)",style: TextStyle(
                                fontSize: 20,
                              ),),

                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>project1()));
                              },
                            ),


                            InkWell(
                              child:Text("2.Fizo Fish marketing mobile application| 2023 (inprocess)",style: TextStyle(
                                fontSize: 20,
                              ),),

                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>project2()));
                              },
                            ),
                            InkWell(
                              child:Text("3.Blog application (bava blog)| 2023",style: TextStyle(
                                fontSize: 20,
                              ),),

                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>project3()));
                              },
                            ),InkWell(
                              child: Text("4.Contact Ui | 2023",style: TextStyle(
                                fontSize: 20,
                              ),),

                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>project4()));
                              },
                            ),InkWell(
                              child:  Text("5.Tour Wepsite | 2023",style: TextStyle(
                                fontSize: 20,
                              ),),

                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>project5()));
                              },
                            ),




                            ],
                        ),
                      ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,

                        children: [
                          Icon(Icons.skip_previous_outlined),

                          TextButton(onPressed: (){
                            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>skills()));

                          }, child: Text("profile")),
                          Spacer(),
                          Icon(Icons.next_plan_outlined),

                          TextButton(onPressed: (){
                            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Reference()));
                          }, child:  Text("References"))
                        ],

                      ),


                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
