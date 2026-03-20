import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'history_screen.dart';
import 'analytics_screen.dart';
import 'profile_screen.dart';

void main() {
  runApp(MoodlyApp());
}

class MoodlyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _currentIndex = 0;

  // ⚠️ IMPORTANT: const lagao (best practice)
  final List<Widget> _screens = [
    HomeScreen(),
    HistoryScreen(),
    AnalyticsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      // 👇 ye line sabse important hai
      body: _screens[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,

        onTap: (index) {
          setState(() {
            _currentIndex = index; // 👈 ye change karega screen
          });
        },

        selectedItemColor: Colors.purple,
        unselectedItemColor: Colors.grey,

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
            icon: Icon(Icons.bar_chart),
            label: "Analytics",
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