import 'package:flutter/material.dart';
import 'package:mypage_view/Widgets/Avatar.dart';
import 'package:mypage_view/Widgets/Myappbar.dart';
import 'package:mypage_view/pages/projects.dart';
import 'package:url_launcher/url_launcher.dart';

class project3 extends StatefulWidget {
  const project3({super.key});

  Future<void> _launchURL2 (String url) async{
    final Uri uri = Uri(scheme: "https",host: url);
    if(!await launchUrl(
      uri,
      mode:LaunchMode.externalApplication,
    )){
      throw"can not launch url";
    }
  }

  @override
  State<project3> createState() => _project1State();
}

class _project1State extends State<project3> {
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
                            Text("Blog application (bava blog)| 2023",style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),),
                            Text("Tools:: Flutter, firebase storage, Realtime database,",style: TextStyle(
                              fontSize: 20,

                            ),),
                            for(int i=1;i<6;i++)
                            Container(
                              child:Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Image(image: AssetImage("Images/blog ($i).jpg"),height: 400,width: 400,),
                              ),
                            ),


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
