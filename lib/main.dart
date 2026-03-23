import 'package:flutter/material.dart';
import 'home_screen.dart';     // Import Home screen
import 'history_screen.dart';  // Import History screen
import 'profile_screen.dart';  // Import Profile screen

// Entry point of the app
void main() {
  runApp(MyApp()); // Runs the root widget
}

// Root widget of the application
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes debug banner
      home: MainScreen(), // First screen of the app
    );
  }
}

// Main screen with bottom navigation
class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

// State class for MainScreen
class _MainScreenState extends State<MainScreen> {

  int _currentIndex = 0; // Stores the selected tab index

  // List of screens (must match bottom navigation items)
  final List<Widget> _screens = [
    HomeScreen(),    // Index 0
    HistoryScreen(), // Index 1
    ProfileScreen(), // Index 2
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // Displays the selected screen
      body: _screens[_currentIndex],

      // Bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Highlights selected tab

        // Called when user taps on a tab
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Updates selected index
          });
        },

        selectedItemColor: Colors.purple,   // Color of selected item
        unselectedItemColor: Colors.grey,   // Color of unselected items

        // Navigation items (must match _screens list)
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}