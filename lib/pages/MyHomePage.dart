import 'package:flutter/material.dart';
import 'package:mypage_view/Widgets/Avatar.dart';
import 'package:mypage_view/Widgets/Myappbar.dart';
import 'package:mypage_view/pages/Aboutme.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Myappbar(),
            Container(
              height: 500,
              width: 350,
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  )
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                   Avatar(),
                  SizedBox(height: 15,),
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name:Armstrong Bavananthan",style: TextStyle(
                        fontSize: 20,
                      ),),
                      Text("Email: bavananthan14@gmail.com",style: TextStyle(
                        fontSize: 20,
                      ),),
                      Text("Phone No: 0766572590",style: TextStyle(
                        fontSize: 20,

                      ),),
                      Text("Address: Keeri,Mannar",style: TextStyle(
                        fontSize: 20,
                      ),),
                      Text("Country: Srilanka",style: TextStyle(
                        fontSize: 20,

                      ),)
                    ],
                  ),
                  Divider(color: Colors.black12,height: 15,thickness: 3,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.next_plan_outlined),

                      TextButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Aboutme()));
                      }, child: Text("About "))
                    ],

                  ),
                  Divider(color: Colors.black12,height: 15,thickness: 3,),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
