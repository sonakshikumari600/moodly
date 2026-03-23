import 'package:flutter/material.dart'; // Importing Flutter material design package

// StatelessWidget (not changing dynamically)
class HistoryScreen extends StatelessWidget {

  // List of moods 
  final List<Map<String, String>> moods = [
    {'mood': '😄', 'text': 'Great day!'},
    {'mood': '😢', 'text': 'Bad day'},
    {'mood': '😐', 'text': 'Neutral'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar at the top
      appBar: AppBar(
        title: Text("Mood History"), // Title of the screen
      ),

      // Body
      body: ListView.builder(
        itemCount: moods.length, // Total number of items in the list

        // Builds each list item dynamically
        itemBuilder: (context, index) {
          return ListTile(
            // Leading widget (left side) showing emoji
            leading: Text(
              moods[index]['mood']!,
              style: TextStyle(fontSize: 24), // emoji size
            ),

            // Title text showing mood description
            title: Text(
              moods[index]['text']!,
            ),
          );
        },
      ),
    );
  }
}