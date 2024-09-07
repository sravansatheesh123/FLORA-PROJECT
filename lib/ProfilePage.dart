import 'package:flutter/material.dart';
import 'package:project/Ongoing.dart';
import 'package:project/Wishlist.dart';
import 'package:project/address.dart';
import 'package:project/introsecond.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  void _navigateToPage(Widget page) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => page),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          // Top section with background image and avatar
          Stack(
            children: [
              Container(
                height: screenHeight * 0.4,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assest/images/img.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 20,
                left: screenWidth * 0.5 - 50,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assest/img/img_10.png'),
                    ),
                    Positioned(
                      bottom: -10,
                      right: -10,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: const CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.blue,
                          child: Icon(
                            Icons.edit,
                            color: Colors.white,
                            size: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          // List of options
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: ListView(
                children: [
                  _buildOption(
                    'Edit Profile',
                    Icons.edit,
                        () {}, // Add your navigation logic
                  ),
                  _buildOption(
                    'My Orders',
                    Icons.more_horiz,
                        () => _navigateToPage(MyApp()),
                  ),
                  _buildOption(
                    'Wishlist',
                    Icons.favorite_border,
                        () => _navigateToPage(Wishlist()),
                  ),
                  _buildOption(
                    'Edit Address',
                    Icons.edit_location_alt,
                        () => _navigateToPage(Address()),
                  ),
                  // _buildOption(
                  //   'All Plants', // Add this new option
                  //   Icons.local_florist, // Use an appropriate icon
                  //       () => _navigateToPage(Cateogorygory()), // Navigate to the Category page

                  _buildOption(
                    'Change Password',
                    Icons.lock,
                        () {}, // Add your navigation logic
                  ),
                  _buildOption(
                    'Edit Email Address',
                    Icons.email,
                        () {}, // Add your navigation logic
                  ),
                  _buildOption(
                    'Help',
                    Icons.help,
                        () {}, // Add your navigation logic
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        _navigateToPage(IntroSecond());
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.red,
                        backgroundColor: Colors.white,
                        side: BorderSide(color: Colors.red, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text(
                        'Logout',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOption(String title, IconData icon, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          IconButton(
            icon: Icon(icon),
            onPressed: onPressed,
          ),
        ],
      ),
    );
  }
}
