import 'package:flutter/material.dart';
import 'package:mypage_view/Widgets/Avatar.dart';
import 'package:mypage_view/Widgets/Myappbar.dart';
import 'package:mypage_view/pages/MyHomePage.dart';
import 'package:mypage_view/pages/skills.dart';

class Aboutme extends StatefulWidget {
  const Aboutme({super.key});

  @override
  State<Aboutme> createState() => _AboutmeState();
}

class _AboutmeState extends State<Aboutme> {
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
                            Text("*Softwere Engineer",style: TextStyle(
                              fontSize: 20,
                            ),),
                            Text("* Education: Bachelor of Computer Science\nTrincomalee Campus,EUSL",style: TextStyle(
                              fontSize: 20,

                            ),),
                            Text("2020-2024",style: TextStyle(
                              fontSize: 20,
                            ),),
                            Center(
                              child: Text("-------ABOUT------",style: TextStyle(
                                fontSize: 20,
                                  fontWeight: FontWeight.bold,

                              ),),
                            ),
                            Text("Aspiring software engineer with a passion for translating academic knowledge into practical applications. Committed to ongoing self-improvement and career development. Enthusiastic about joining a dynamic team, gaining insights from experienced industry experts, and utilizing my technical abilities to foster substantial innovation",style: TextStyle(
                              fontSize: 20,
                            ),),
                          ],
                        ),
                      ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,

                        children: [
                          Icon(Icons.skip_previous_outlined),

                          TextButton(onPressed: (){
                           Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>HomePage()));

                          }, child: Text("profile")),
                          Spacer(),
                          Icon(Icons.next_plan_outlined),

                          TextButton(onPressed: (){
                            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>skills()));
                          }, child:  Text("Skills"))
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
