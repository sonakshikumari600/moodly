import 'package:flutter/material.dart';

class AnalyticsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Analytics")),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("Your Mood Stats", style: TextStyle(fontSize: 20)),

            SizedBox(height: 20),

            Text("😊 Happy: 5 days"),
            Text("😢 Sad: 2 days"),
            Text("😡 Angry: 1 day"),

          ],
        ),
      ),
    );
  }
}