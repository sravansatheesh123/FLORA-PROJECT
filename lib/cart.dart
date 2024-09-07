import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project/Order.dart';
import 'package:project/chat.dart';
import 'package:project/crt.dart';
import 'package:project/homepage.dart';
import 'package:project/main.dart';
import 'package:project/wishlist.dart';

class Cart extends StatefulWidget {
  Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  List<String> imagess = [
    "assest/images/img_35.png",
    "assest/images/img_40.png",
    "assest/images/img_41.png",
    "assest/images/img_35.png",
  ];

  List<String> names = [
    "Moon Cactus",
    "Monstera Delici..",
    "Dracaena Gold...",
    "Moon Cactus"
  ];
  List<String> price = ["400", "1150", "399", "360"];
  List<String> discount = ["360", "1150", "399", "360"];
  List<String> sizes = [
    "Small Size",
    "Medium Size",
    "Small Size",
    "Small Size"
  ];
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
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
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
                  Text("CART", style: TextStyle(color: Colors.black)),
                  Text("ORDER SUMMARY", style: TextStyle(color: Colors.black)),
                  Text("PAYMENT", style: TextStyle(color: Colors.black)),
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
                      crt(
                        name: names[index],
                        price: price[index],
                        size: sizes[index],
                        image: imagess[index],
                        discount: discount[index],
                      ),
                    ],
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset("assest/images/img_43.png"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Sub Total",style:TextStyle(fontSize: 20),),
                Text("₹1,949/",style:TextStyle(fontSize: 20))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Discount",style:TextStyle(fontSize: 20)),
                Text("₹40/",style: TextStyle(color: Colors.green,fontSize: 20),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Delivery Charges",style:TextStyle(fontSize: 20)),
                Text("Free Delivery",style: TextStyle(color: Colors.green,fontSize: 18),),
              ],

            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Image.asset("assest/images/img_43.png"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Total",style:TextStyle(fontSize: 20,fontWeight: FontWeight.w800),),
                Text("₹1909/",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w800)),
              ],
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff08A562), // Set button background color
              ),
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Order()),
                );
              },
              child: const Text(
                "Checkout",
                style: TextStyle(color: Colors.white), // Set text color to white
              ),
            )

          ],
        ),
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
                    context, MaterialPageRoute(builder: (context) => Wishlist()));
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
                color: _selectedIndex == 0 ? Colors.white : Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
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
                color: _selectedIndex == 3 ? Colors.white : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}