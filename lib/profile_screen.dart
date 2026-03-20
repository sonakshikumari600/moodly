import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),

      body: Padding(
        padding: EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            // 👤 Profile Image
            
            CircleAvatar(
              radius: 50,
              backgroundColor: const Color.fromARGB(255, 243, 201, 232),
              child: Icon(
                Icons.person,
                size: 50,
                color: const Color.fromARGB(255, 236, 123, 202),
              ),
            ),

            SizedBox(height: 20),

            // 👤 Name
            Text(
              "Sonakshi",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 5),

            // 👤 Subtitle
            Text(
              "Mood Tracker User",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),

            SizedBox(height: 30),

            // 📊 Stats Row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                // Entries
                Column(
                  children: [
                    Text("85",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    Text("Entries"),
                  ],
                ),

                // Streak
                Column(
                  children: [
                    Text("12",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    Text("Streak"),
                  ],
                ),

                // Happy Days
                Column(
                  children: [
                    Text("50",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    SizedBox(height: 5),
                    Text("Happy Days"),
                  ],
                ),

              ],
            ),

            SizedBox(height: 30),

            // ⚙️ Simple Options (Row only)
            Row(
              children: [
                Icon(Icons.edit),
                SizedBox(width: 10),
                Text("Edit Profile"),
              ],
            ),

            SizedBox(height: 15),

            Row(
              children: [
                Icon(Icons.notifications),
                SizedBox(width: 10),
                Text("Reminders"),
              ],
            ),

            SizedBox(height: 15),

            Row(
              children: [
                Icon(Icons.logout),
                SizedBox(width: 10),
                Text("Logout"),
              ],
            ),

          ],
        ),
      ),
    );
  }
}