import 'package:flutter/material.dart'; // Importing Flutter material design package

// StatefulWidget 
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

// State class for HomeScreen
class _HomeScreenState extends State<HomeScreen> {

  // Variable to store currently selected mood emoji
  String selectedMood = '';

  // List of moods with emoji and label
  final List<Map<String, String>> moods = [
    {'emoji': '😄', 'label': 'Happy'},
    {'emoji': '😐', 'label': 'Neutral'},
    {'emoji': '😢', 'label': 'Sad'},
    {'emoji': '😡', 'label': 'Angry'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar at the top
      appBar: AppBar(
        title: Text("Hey Sonakshi 👋"), // Greeting title
        elevation: 0, // No shadow under AppBar
      ),

      // Main body with padding
      body: Padding(
        padding: EdgeInsets.all(16), // Add 16 pixels padding all around
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align left
          children: [

            // Heading text
            Text(
              "How are you feeling today?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),

            SizedBox(height: 20), // Space below heading

            // Row of mood emojis
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, // Space emojis evenly
              children: moods.map((mood) {

                final isSelected = selectedMood == mood['emoji']; // Check if this mood is selected

                return GestureDetector(
                  // When user taps on a mood
                  onTap: () {
                    setState(() {
                      selectedMood = mood['emoji']!; // Update selected mood
                    });
                  },

                  child: Column(
                    children: [

                      // Emoji container
                      Container(
                        padding: EdgeInsets.all(12), // Space inside the box
                        decoration: BoxDecoration(
                          color: isSelected
                              ? Colors.purple.shade100 // Highlight if selected
                              : Colors.white, // Default background
                          borderRadius: BorderRadius.circular(15), // Rounded corners
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5, // Soft shadow
                            )
                          ],
                        ),
                        child: Text(
                          mood['emoji']!, // Show emoji
                          style: TextStyle(fontSize: 26), // Bigger emoji
                        ),
                      ),

                      SizedBox(height: 6), // Space between emoji and label

                      // Mood label below emoji
                      Text(
                        mood['label']!,
                        style: TextStyle(
                          fontSize: 12,
                          color: isSelected ? Colors.purple : Colors.grey, // Highlight if selected
                          fontWeight: isSelected
                              ? FontWeight.bold
                              : FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                );
              }).toList(),
            ),

            SizedBox(height: 25), // Space before text input

            // Text field for writing note
            TextField(
              decoration: InputDecoration(
                hintText: "Write something...", // Placeholder text
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15), // Rounded border
                  borderSide: BorderSide.none, // No border line
                ),
              ),
            ),

            SizedBox(height: 20), // Space before button

            // Save Mood button
            ElevatedButton(
              onPressed: () {
                // Show a snackbar when button is pressed
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Mood Saved 💜")),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50), // Full width button
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), // Rounded corners
                ),
              ),
              child: Text("Save Mood"), // Button text
            )
          ],
        ),
      ),
    );
  }
}