import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/Homepage.dart';
import 'package:project/Wishlist.dart';
import 'package:project/cart.dart';


class Comment extends StatefulWidget {
  const Comment({super.key});

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  int _selectedIndex = 0;
  int _currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assest/images/img_48.png",
          fit: BoxFit.contain,
          height: 32,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Centered Image
          Center(
            child: Image.asset(
              "assest/images/img_68.png",
              height: 250, // Medium size for the image
              width: 350,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 250), // Spacing between image and search bar
          // Search Bar and Send Button Row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,),
            child: Row(
              children: [
                // Search Bar
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type here...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                    ),
                  ),
                ),
                SizedBox(width: 30), // Spacing between search bar and button
                // Send Button
                IconButton(
                  onPressed: () {
                    // Handle send action
                  },
                  icon: Icon(Icons.send),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 40,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
            bottomRight: Radius.circular(40),
            bottomLeft: Radius.circular(40),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Homepage()));
              },
              icon: Icon(
                Icons.home_outlined,
                color: _selectedIndex == 2 ? Colors.white : Colors.grey,


              ),
            ),
            const SizedBox(width: 20),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Cart()));
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: _selectedIndex == 1 ? Colors.white : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Wishlist()));
              },
              icon: Icon(
                Icons.favorite_border_outlined,
                color: _selectedIndex == 2 ? Colors.white : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Comment()));
              },
              icon: Icon(
                Icons.chat_bubble_outline,
                color: _selectedIndex == 0 ? Colors.white : Colors.grey,              ),
            ),
          ],
        ),
      ),
    );
  }
}