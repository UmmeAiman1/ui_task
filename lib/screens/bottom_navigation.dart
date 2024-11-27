import 'package:flutter/material.dart';
import 'package:hiring_task/app_themes.dart';
import 'package:hiring_task/screens/dashboard.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0;
  final List<Widget> screens = [const Dashboard()];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.rocket_launch), label: 'Quick Action'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble_outline_rounded),
              label: 'Recent Discussion'),
          BottomNavigationBarItem(icon: Icon(Icons.help), label: 'Need Help'),
        ],
        onTap: _onItemTapped,
        currentIndex: _currentIndex,
        unselectedItemColor: const Color(0xffA8A8A8),
        unselectedLabelStyle: AppThemes.lightTheme.textTheme.headlineMedium,
        selectedItemColor: AppThemes.lightTheme.colorScheme.onSecondary,
      ),
    );
  }
}
