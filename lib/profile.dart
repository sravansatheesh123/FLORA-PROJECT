import 'package:flutter/material.dart';
import 'package:project/ProfilePage.dart'; // Import the file where ProfilePage is defined

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  void _navigateToProfilePage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfilePage()), // Correct class name
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _navigateToProfilePage,
          child: Text('Go to Profile Page'),
        ),
      ),
    );
  }
}
