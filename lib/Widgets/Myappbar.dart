import 'package:flutter/material.dart';
import 'package:mypage_view/Widgets/Avatar.dart';
import 'package:mypage_view/pages/Aboutme.dart';
import 'package:mypage_view/pages/MyHomePage.dart';
import 'package:mypage_view/pages/Reference.dart';
import 'package:mypage_view/pages/projects.dart';
import 'package:mypage_view/pages/skills.dart';

class Myappbar extends StatelessWidget {
  const Myappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 22.0),
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
             Icon(Icons.sort, size: 30, color: Colors.indigo),

            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                " RESUME ",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
