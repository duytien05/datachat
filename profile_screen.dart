import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Group Info")),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Text(
              "Simple Chat App",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 20),

            Text("Students:"),

            Text("Nguyen Duy Tien"),
            Text("Ha Nguyen Truc Linh"),

            SizedBox(height: 20),

            Text("Course: Mobile Programming"),
          ],
        ),
      ),
    );
  }
}
