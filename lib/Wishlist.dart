import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project/Cateogory.dart';
import 'package:project/cart.dart';
import 'package:project/chat.dart';
import 'package:project/wishcrt.dart';

import 'Homepage.dart';

class Wishlist extends StatefulWidget {
   Wishlist({super.key});

  @override
  State<Wishlist> createState() => _FavouriteState();
}

class _FavouriteState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    List<String> imagess = [
      "assest/images/img_40.png",
      "assest/images/img_41.png"
    ];

    List<String> names = [
      "Monstera Delici..",
      "Dracaena Gold...",
    ];
    List<String> price = ["1150", "399"];

    List<String> sizes = [
      "Medium Size",
      "Small Size",
    ];

    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: Stack(

          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
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
                        Text("WISHLIST", style: TextStyle(color: Colors.black)),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.shopping_cart_outlined),
                        )
                      ],
                    ),
                  ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: imagess.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 50), // Adjust as needed
                        child: Column(
                          children: [
                            Wishcrt(
                              name: names[index],
                              price: price[index],
                              size: sizes[index],
                              image: imagess[index],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
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
                        context, MaterialPageRoute(builder: (context) => Cateogory()));
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
                  color: _selectedIndex == 2 ? Colors.white : Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Wishlist()));
                },
                icon: Icon(
                  Icons.favorite_border_outlined,
                  color: _selectedIndex == 0 ? Colors.white : Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Comment()));
                },
                icon: Icon(
                  Icons.chat_bubble_outline,
                  color: _selectedIndex == 3 ? Colors.white : Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}