import 'package:flutter/material.dart';
import 'package:mypage_view/Widgets/Avatar.dart';
import 'package:mypage_view/Widgets/Myappbar.dart';
import 'package:mypage_view/pages/projects.dart';

class project5 extends StatefulWidget {
  const project5({super.key});

  @override
  State<project5> createState() => _project5State();
}

class _project5State extends State<project5> {
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
                            Center(
                              child: Text("Project Detail",style: TextStyle(
                                decoration: TextDecoration.underline,
                                fontSize: 20,
                              ),),
                            ),
                            Text("Tour Wepsite | 2023",style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),),
                            Text("Tools:: React js ,Material Ui ",style: TextStyle(
                              fontSize: 20,

                            ),),
                            Text("https://github.com/Bavananthan/Tour_webpage.git",style: TextStyle(
                              fontSize: 20,

                            ),),

                            Image(image: AssetImage("Images/tour.png")),

                          ],
                        ),
                      ),


                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,

                        children: [
                          Icon(Icons.skip_previous_outlined),

                          TextButton(onPressed: (){
                            Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>projects()));

                          }, child: Text("projects")),
                          Spacer(),



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
