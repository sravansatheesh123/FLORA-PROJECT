import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/Detailcart.dart';
import 'package:project/Indoorfirst.dart';
import 'package:project/Indoorplant.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'outdoorsecond.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({super.key});

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "MONSTERA DELICIOSA",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.share, color: Colors.black),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 200,
                      width: 350,
                      child: PageView(
                        controller: _pageController,
                        children: [
                          _buildImageContainer('assest/images/img_74.png'),
                          _buildImageContainer('assest/images/img_66.png'),
                          _buildImageContainer('assest/images/img_65.png'),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: SmoothPageIndicator(
                      controller: _pageController,
                      count: 3,
                      effect: WormEffect(
                        dotHeight: 8,
                        dotWidth: 8,
                        activeDotColor: Colors.green,
                        dotColor: Colors.grey.shade400,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text(
                          "Monstera Deliciosa",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        margin: EdgeInsets.only(right: 16.0),
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          "4.6*",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 450,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[300],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Detailcontainner(
                            text: "Water once a week",
                            images: "assest/images/img_75.png",
                          ),
                          Detailcontainner(
                            text: "Needs bright indirect sunlight",
                            images: "assest/images/img_76.png",
                          ),
                          Detailcontainner(
                            text: "Toxics to pets",
                            images: "assest/images/img_77.png",
                          ),
                          Detailcontainner(
                            text: "Needs gardening experience",
                            images: "assest/images/img_78.png",
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "Select Plant Size",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildSizeOption("Small", Colors.black),
                      _buildSizeOption("Medium", Colors.green),
                      _buildSizeOption("Large", Colors.black),
                      _buildSizeOption("Extra Large", Colors.black),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "Select Plot",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildSizeOption("Normal plot", Colors.black),
                      _buildSizeOption("Self Watering Plot", Colors.green),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "Quantity",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Image.asset(
                    "assest/images/img_38.png",
                    height: 20,
                    width: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "About",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "Also called swiss plants monstera topical is tunner brought indoors with large leaves wonderful and fentstration that ressamble a swiss cheese slice this plants also become one of the crowd favourite",
                    ),
                  ),
                  SizedBox(height: 16),

                  // Using CollapsibleContainer multiple times
                  CollapsibleContainer(
                    title: "Swiss Cheese Plant is a good indoor plant?",
                    content: "Yes, it is a great indoor plant. It is easy to care for and adapts well to indoor environments.",
                  ),
                  SizedBox(height: 16),

                  CollapsibleContainer(
                    title: "What type of soil is best?",
                    content: "A well-draining potting mix with peat moss, pine bark, and perlite is ideal for this plant.",
                  ),
                  SizedBox(height: 16),

                  CollapsibleContainer(
                    title: "How often should I water it?",
                    content: "Water the plant once a week, ensuring the top inch of soil is dry before watering again.",
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15), // Adjust the radius as needed
                      child: Image.asset(
                        "assest/images/Screenshot (2).png",
                        width: 250,
                        height: 100,
                        fit: BoxFit.cover, // Ensures the image fits within the given dimensions
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      "About",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Container(
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child:
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 5),
                              outdoorsecond(
                                imgs: 'assest/images/img_70.png',
                                plantrating: '4.5*',
                                price: '1299/',
                                names: 'Dracansa Delici...',
                                planttype: 'Outdoor Plants',
                                size: 'small size',
                              ), // Adjust this width as needed
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Indoorsecond(
                                  imgs: 'assest/images/img_72.png',
                                  plantrating: '*4.6',
                                  price: '1450/',
                                  names: 'Sanciveria Snak....',
                                  planttype: 'Idoor Plants',
                                  size: 'Medium Size',
                                  planoffer: '10%',
                                  plantofferprice: '2000',
                                ),
                              ),
                              SizedBox(width: 5), // Adjust this width as needed

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Indorplant(
                                  imgs: 'assest/images/img_73.png',
                                  plantrating: '4.5*',
                                  price: '1299/',
                                  names: 'Monstera Delici...',
                                  planttype: 'Indoor Plants',
                                  size: 'small size',
                                ),
                              ),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImageContainer(String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            right: 8,
            child: Container(
              padding: EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSizeOption(String size, Color borderColor) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        size,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class CollapsibleContainer extends StatefulWidget {
  final String title;
  final String content;

  const CollapsibleContainer({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  _CollapsibleContainerState createState() => _CollapsibleContainerState();
}

class _CollapsibleContainerState extends State<CollapsibleContainer> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Text(
              widget.title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                _isExpanded ? Icons.expand_less : Icons.expand_more,
              ),
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
            ),
          ),
          if (_isExpanded)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(widget.content),
            ),
        ],
      ),
    );
  }
}
