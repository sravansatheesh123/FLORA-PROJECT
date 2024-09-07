import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/DetailPage.dart';
import 'package:project/Indoorplant.dart';
import 'package:project/Outdoorfirst.dart';

import 'indoorsecond.dart';

import 'outdoorsecond.dart';

class Cateogory extends StatefulWidget {
  const Cateogory({super.key});

  @override
  State<Cateogory> createState() => _CategoryState();
}

class _CategoryState extends State<Cateogory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            // Top search bar and category list
            Container(
              height: 60,
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Back button
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Colors.white,
                        size: 15,
                      ),
                    ),
                  ),

                  // Search Bar
                  Container(
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'Search plants',
                        suffixIcon: IconButton(
                          icon: Icon(Icons.keyboard_voice),
                          onPressed: () {
                            print('Use voice command');
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    "assest/images/img_69.png",
                    height: 50,
                    width: 50,
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => Detailpage()));
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Category list
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // First Text: All Plants with Green Background
                    Container(
                      height: 10,
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Center(
                        child: Text(
                          'All Plants',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10), // Space between items
                    // Second Text: Indoor Plants
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Center(
                        child: Text(
                          'Indoor Plants',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10), // Space between items
                    // Third Text: Outdoor Plants
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Center(
                        child: Text(
                          'Outdoor Plants',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10), // Space between items
                    // Fourth Text: Flower Plants
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Center(
                        child: Text(
                          'Flower Plants',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10), // Space between items
                    // Desktop Plants
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: Center(
                        child: Text(
                          'Desktop Plants',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Scrollable plant sections
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Indoor Plants Section
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Indoor Plants',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Indorplant(
                              imgs: 'assest/images/img_40.png',
                              plantrating: '4.5*',
                              price: '1299/',
                              names: 'Monstera Delici...',
                              planttype: 'Indoor Plants',
                              size: 'small size',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Indoorsecond(
                              imgs: 'assest/images/img_64.png',
                              plantrating: '*4.6',
                              price: '1450/',
                              names: 'Sanciveria Snak....',
                              planttype: 'Indoor Plants',
                              size: 'Medium Size',
                              planoffer: '10%',
                              plantofferprice: '2000',
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Outdoor Plants Section
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Outdoor Plants',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: outdoor(
                              imgs: 'assest/images/img_70.png',
                              plantrating: '*6.6',
                              price: '450/',
                              names: 'Areca Plam',
                              planttype: 'Outdoor Plants',
                              size: 'Medium Size',
                              planoffer: '20%',
                              plantofferprice: '1450',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: outdoorsecond(
                              imgs: 'assest/images/img_71.png',
                              plantrating: '4.5*',
                              price: '1299/',
                              names: 'Dracansa Delici...',
                              planttype: 'Outdoor Plants',
                              size: 'small size',
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Popular Plants Section
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Popular Plants',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: outdoorsecond(
                              imgs: 'assest/images/img_72.png',
                              plantrating: '4.5*',
                              price: '499/',
                              names: 'azlai drwav pi...',
                              planttype: 'Outdoor Plants',
                              size: 'large size',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Indoorsecond(
                              imgs: 'assest/images/img_73.png',
                              plantrating: '4.5*',
                              price: '1999/',
                              names: 'peace liy...',
                              planttype: 'Indoor Plants',
                              size: 'large size',
                              planoffer: '20%',
                              plantofferprice: "3000",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}