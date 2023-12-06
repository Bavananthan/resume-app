import 'package:flutter/material.dart';
import 'package:mypage_view/Widgets/Avatar.dart';
import 'package:mypage_view/Widgets/Myappbar.dart';
import 'package:mypage_view/pages/MyHomePage.dart';

class Reference extends StatefulWidget {
  const Reference({super.key});

  @override
  State<Reference> createState() => _ReferenceState();
}

class _ReferenceState extends State<Reference> {
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
                              child: Text("References",style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),


                            ),
                            Text("Mrs.K.Khedika | Lecturer\nDepartment of Computer Science | Faculty of Applied Science,\nTrincomalee Campus | EUSL /nkhedikas@esn.ac.lk | +94764888942",style: TextStyle(
                              fontSize: 20,
                            ),),
                            SizedBox(height: 15,),
                            Text("Mrs.Thanushya Thanujan | Lecturer khedikas@esn.ac.lk | +94764888942 Department of Computer Science | Faculty of Applied Science,thanushyal@esn.ac.lk | +94773449623",style: TextStyle(
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

                          }, child: Text("Home")),
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
