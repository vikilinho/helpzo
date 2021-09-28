import 'package:classo/screens/matches.dart';
import 'package:classo/screens/players.dart';
import 'package:classo/screens/teams.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  // ignore: unused_field

  int _currentIndex = 0;
  set currentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: [
          PlayersScreen(),
          TeamsScreen(),
          MatchesScreen(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.black87,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) => currentIndex = index,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Players",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "Teams"),
          BottomNavigationBarItem(
              icon: Icon(Icons.stacked_bar_chart), label: "Matches"),
        ],
      ),
    );
  }
}
