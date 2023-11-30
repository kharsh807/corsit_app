import 'package:corsit/pages/home_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../pages/Members.dart';
import '../pages/Robocor.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  BottomNavBar({required this.currentIndex, required this.onTap});

  void handleNavigation(BuildContext context, int index) {
    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
      // Navigate to the Home page (already on the Home page, so no need to navigate)
    } else if (index == 1) {
      // Navigate to the Members page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Members()),
      );
    } else if (index == 2) {
      // Navigate to the Robocor page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Robocor()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.transparent,
      color: Colors.deepOrangeAccent.shade200,
      animationDuration: Duration(milliseconds: 300),
      index: currentIndex,
      onTap: (index) {
        onTap(index);
        handleNavigation(context, index);
      },
      items: [
        Icon(Icons.home),
        Icon(Icons.list),
        Icon(Icons.people_outline),
      ],
    );
  }
}
