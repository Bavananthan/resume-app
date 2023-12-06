import 'package:flutter/material.dart';
import 'package:mypage_view/Widgets/Avatar.dart';
import 'package:mypage_view/Widgets/Myappbar.dart';
import 'package:mypage_view/pages/Aboutme.dart';
import 'package:mypage_view/pages/projects.dart';

class skills extends StatefulWidget {
  const skills({super.key});

  @override
  State<skills> createState() => _skillsState();
}

class _skillsState extends State<skills> {
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

                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ARMSTRONG BAVANANTHAN",style: TextStyle(
                              fontSize: 20,
                            ),),
                            Center(
                              child: Text("Technical Skills",style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),

                            ),
                            Text("Flutter"
                                "\nFirebase\n"
                                "HTML/CSS\n"
                                "JavaScript\n"
                                "PHP\n"
                                "MySQL\n"
                                "Node js\n"
                                "React js"
                                "\nJava"
                                "\nSelenium"
                                "\nTest Ng"

                                , style: TextStyle(
                              fontSize: 20,
                            ),),
                            Center(
                              child: Text("Soft Skills",style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                              ),
                            Text("eadership\nTeam worker\nSelf learner\nGood communication\nCreative thinking\nQuick learner",style: TextStyle(
                              fontSize: 20,
                            ),),
                            Center(
                              child: Text("Language",style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                            ),
                            Text("English\nTamil\nSinhala",style: TextStyle(
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
                            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>Aboutme()));

                          }, child: Text("About")),
                          Spacer(),
                          Icon(Icons.next_plan_outlined),

                          TextButton(onPressed: (){
                            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>projects()));

                          }, child:  Text("Projects"))
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
