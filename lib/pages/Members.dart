import 'package:flutter/material.dart';
import '../widgets/bottomBar.dart';
  // Import the BottomNavBar class

class Members extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
      ),
      // Add your Members page content here
      body: Center(
        child: Text('Members Page Content'),
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: 1,  // Set the current index to 1 for Members page
        onTap: (index) {
          // Handle tapping on the BottomNavBar if needed
        },
      ),
    );
  }
}
