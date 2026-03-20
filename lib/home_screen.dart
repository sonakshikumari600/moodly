import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String selectedMood = '';

  final List<Map<String, String>> moods = [
    {'emoji': '😄', 'label': 'Happy'},
    {'emoji': '😐', 'label': 'Neutral'},
    {'emoji': '😢', 'label': 'Sad'},
    {'emoji': '😡', 'label': 'Angry'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hey Sonakshi 👋"),
        elevation: 0,
      ),

      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              "How are you feeling today?",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: moods.map((mood) {

                final isSelected = selectedMood == mood['emoji'];

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedMood = mood['emoji']!;
                    });
                  },

                  child: Column(
                    children: [

                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? Colors.purple.shade100
                              : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                            )
                          ],
                        ),
                        child: Text(
                          mood['emoji']!,
                          style: TextStyle(fontSize: 26),
                        ),
                      ),

                      SizedBox(height: 6),

                      Text(
                        mood['label']!,
                        style: TextStyle(
                          fontSize: 12,
                          color: isSelected ? Colors.purple : Colors.grey,
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

            SizedBox(height: 25),

            TextField(
              decoration: InputDecoration(
                hintText: "Write something...",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Mood Saved 💜")),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: Text("Save Mood"),
            )
          ],
        ),
      ),
    );
  }
}