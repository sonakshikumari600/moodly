import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {

  final List<Map<String, String>> moods = [
    {'mood': '😄', 'text': 'Great day!'},
    {'mood': '😢', 'text': 'Bad day'},
    {'mood': '😐', 'text': 'Neutral'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mood History")),

      body: ListView.builder(
        itemCount: moods.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text(moods[index]['mood']!, style: TextStyle(fontSize: 24)),
            title: Text(moods[index]['text']!),
          );
        },
      ),
    );
  }
}