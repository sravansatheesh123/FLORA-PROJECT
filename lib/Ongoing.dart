import 'package:flutter/material.dart';
import 'package:project/Ongcrt.dart'; // Correct import
import 'package:project/Delivery.dart'; // Import your Delivery page
import 'package:project/Cancel.dart'; // Import your Cancel page

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context); // Action to pop the current screen
            },
            icon: Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.black, // Set the icon color to black
              size: 15,
            ),
          ),
          title: Center(
            child: Text(
              'My Order',
              style: TextStyle(color: Colors.black),
            ),
          ),
          bottom: TabBar(
            labelColor: Colors.black,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.green,
            tabs: [
              Tab(text: "Ongoing"),
              Tab(text: "Delivered"),
              Tab(text: "Canceled"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Ongoing Tab Content
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Ongcrt(
                          name: 'Moon Cactus',
                          image: 'assest/images/img_85.png', // Correct path
                          text: "Estimated delivery by 30 JUN 2024",
                        ),
                        SizedBox(height: 5),
                        Ongcrt(
                          name: 'Monstera Deliciosa',
                          image: 'assest/images/img_86.png', // Correct path
                          text: "Estimated delivery by 30 JUN 2024",
                        ),
                        SizedBox(height: 5),
                        Ongcrt(
                          name: 'Dracaena Gold Star',
                          image: 'assest/images/img_87.png', // Correct path
                          text: "Estimated delivery by 30 JUN 2024",
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Delivered Tab Content - directly showing Delivery page
            Delivery(),
            // Cancel Tab Content - directly showing Cancel page
            CancelPage(),
          ],
        ),
      ),
    );
  }
}
