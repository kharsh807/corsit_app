import 'package:flutter/material.dart';
import '../widgets/bottomBar.dart';
  // Import the BottomNavBar class

class Robocor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
      ),
      // Add your Robocor page content here
      body: Center(
        child: Text('Robocor Page Content'),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 2,  // Set the current index to 2 for Robocor page
        onTap: (index) {
          // Handle tapping on the BottomNavBar if needed
        },
      ),
    );
  }
}
