import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        elevation: 0,
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center vertically
          children: [

            // 👤 Profile Image
            CircleAvatar(
              radius: 60,
              backgroundColor: Color.fromARGB(255, 243, 201, 232),
              child: Icon(
                Icons.person,
                size: 60,
                color: Color.fromARGB(255, 236, 123, 202),
              ),
            ),

            SizedBox(height: 20),

            // 👤 Name
            Text(
              "Sonakshi",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 8),

            // 👤 Subtitle
            Text(
              "Mood Tracker User",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),

          ],
        ),
      ),
    );
  }
}