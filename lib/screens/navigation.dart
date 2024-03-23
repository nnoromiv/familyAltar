import 'package:familyaltar/screens/bible.dart';
import 'package:familyaltar/screens/devotional.dart';
import 'package:familyaltar/screens/home.dart';
import 'package:familyaltar/screens/hymns.dart';
import 'package:familyaltar/screens/settings.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentIndex = 0;

  final List<Widget> children = [
    const Home(),
    const Devotional(),
    const Bible(),
    const Hymns(),
    const Settings(),
  ];

  void onTapScreen(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTapScreen,
        selectedLabelStyle: const TextStyle(
            fontFamily: 'Poppins'
          ),
        currentIndex: currentIndex,
        selectedItemColor: Colors.indigo,
        unselectedItemColor: const Color.fromARGB(255, 184, 192, 205),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home_rounded),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_outline),
              activeIcon: Icon(Icons.bookmark_rounded),
              label: 'Devotional'),
          BottomNavigationBarItem(
              icon: Icon(Icons.menu_book_outlined),
              activeIcon: Icon(Icons.menu_book_rounded),
              label: 'Bible'),
          BottomNavigationBarItem(
              icon: Icon(Icons.queue_music),
              activeIcon: Icon(Icons.queue_music_rounded),
              label: 'Hymns'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined),
              activeIcon: Icon(Icons.settings_rounded),
              label: 'Settings'),
        ],
      ),
    );
  }
}
