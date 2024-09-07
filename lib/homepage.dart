import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project/Indoorfirst.dart';
import 'package:project/Indoorplant.dart';
import 'package:project/Outdoorfirst.dart';
import 'package:project/Outdoorsecond.dart';
import 'package:project/Populartile.dart';
import 'package:project/ProfilePage.dart';
import 'package:project/Wishlist.dart';
import 'package:project/cart.dart';
import 'package:project/catogeriescart.dart';
import 'package:project/chat.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final PageController _pageController = PageController(initialPage: 0);
  List<String> imglist = [
    "assest/img/img_11.png",
    "assest/images/img_50.png",
    "assest/images/img_51.png",
    "assest/images/img_52.png"
  ];


  // the index of the current page
  int _activePage = 0;

  // this list holds all the pages
  // all of them are constructed in the very end of this file for readability

  int pageIndex = 0;

  final List<Widget> _pages = [const PageOne(), const PageTwo()];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Image.asset(
              'assest/images/img_48.png',
              height: 60,
              width: 60,
            )),
        backgroundColor: Colors.white,
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              // Navigate to ProfilePage when the CircleAvatar is tapped
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
            child: CircleAvatar(
              radius: 20, // The size of the avatar
              backgroundImage: NetworkImage(
                  'https://assets-global.website-files.com/61dc551a50b7bb185df2a666/61eee223af2d242d877a5726_1.png'), // Image URL
            ),
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            color: Colors.green,
            onPressed: () {
              // Add search functionality here
            },
          ),

          // Add more options here
        ],
      ),
      body: SingleChildScrollView(
        //scrollDirection: Axis.vertical,
        child: Column(
            children: [
              Column(
                children: [
                  Container(
                    height: 80,
                    child: Row(
                      mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "HELLO",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "USER",
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "Good Evening",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w100),
                            ),
                          ],
                        ),
                        Container(
                          width: 250,
                          child: SearchBar(
                            hintText: "Search plant names",
                            trailing: [
                              IconButton(
                                icon: const Icon(Icons.keyboard_voice),
                                onPressed: () {
                                  print('Use voice command');
                                },
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.document_scanner_outlined,
                          size: 30,
                          color: Colors.green,
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                      ),
                    ),
                    // 50% of screen height
                    child: PageView.builder(
                      controller: _pageController,
                      onPageChanged: (int page) {
                        setState(() {
                          _activePage = page;
                        });
                      },
                      itemCount: _pages.length,
                      itemBuilder: (BuildContext context, int index) {
                        return _pages[index % _pages.length];
                      },
                    ),
                  ),

                  // Dots indicator
                  Container(
                    color: Colors.transparent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List<Widget>.generate(
                        _pages.length,
                            (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                            onTap: () {
                              _pageController.animateToPage(
                                index,
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn,
                              );
                            },
                            child: CircleAvatar(
                              radius: 6,
                              backgroundColor: _activePage == index
                                  ? Colors.green
                                  : Colors.grey,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Category',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.black),
                        )),
                  ),
                  Container(
                    height: 140,
                    child: ListView(
                      scrollDirection: Axis.horizontal,

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Categorycard(image: "${imglist[0]}", name: "All plants"),

                        Categorycard(image: "${imglist[1]}", name: "Indoor pLants"),
                        Categorycard(image: "${imglist[2]}", name: "Outdoor plants"),
                        Categorycard(image: "${imglist[0]}", name: "All plants"),
                        Categorycard(image: "${imglist[1]}", name: "Indoor pLants"),
                        Categorycard(image: "${imglist[2]}", name: "Outdoor plants"),
                        Categorycard(
                          image: '${imglist[1]}', name: 'all plants',
                        ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Popular Plants',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black),
                        )),
                  ),
                  Container(
                    height: 240, // Ensure this height matches your populartile height
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        SizedBox(width: 10), // Space before the first item
                        populartile(
                          imag: "assest/images/img_55.png",
                          names: 'Money plant',
                          plantprice: '₹ 270/-',
                          orignalprice: '₹ 300',
                          offerprectange: '10% OFF',
                          plantrate: '*4.5',
                          planttype: 'Indoor plant',
                        ),
                        SizedBox(width: 10), // Space between items
                        populartile(
                          imag: 'assest/images/img_56.png',
                          names: 'Alocasia',
                          plantprice: '₹ 250/-',
                          orignalprice: '₹ 300',
                          plantrate: '4.5',
                          offerprectange: '10% OFF',
                          planttype: 'Indoor plant',
                        ),
                        SizedBox(width: 10), // Space between items
                        populartile(
                          imag: 'assest/images/img_57.png',
                          names: 'Moon cactus',
                          plantprice: '₹ 350/-',
                          orignalprice: '₹ 400',
                          plantrate: '4.5',
                          offerprectange: '12.5% OFF',
                          planttype: 'Indoor plant',
                        ),
                        SizedBox(width: 10), // Space between items
                        populartile(
                          imag: 'assest/images/img_58.png',
                          names: 'Moon cactus',
                          plantprice: '₹ 350/-',
                          orignalprice: '₹ 400',
                          plantrate: '4.5',
                          offerprectange: '12.5% OFF',
                          planttype: 'Indoor plant',
                        ),
                        SizedBox(width: 10), // Space between items
                        populartile(
                          imag: 'assest/images/img_59.png',
                          names: 'Moon cactus',
                          plantprice: '₹ 350/-',
                          orignalprice: '₹ 400',
                          plantrate: '4.5',
                          offerprectange: '12.5% OFF',
                          planttype: 'Indoor plant',
                        ),
                        SizedBox(width: 10), // Space after the last item
                      ],
                    ),
                  ),


                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Indoor Plants',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                width: 600,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Indorplant(
                        imgs: 'assest/images/img_60.png',
                        plantrating: '4.5*',
                        price: '1299/',
                        names: 'Monstera Delici...',
                        planttype: 'Indoor Plants',
                        size: 'small size',
                      ),
                    ),
                    SizedBox(width: 10), // Adjust this width as needed
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Indoorsecond(
                        imgs: 'assest/images/img_61.png',
                        plantrating: '*4.6',
                        price: '1450/',
                        names: 'Sanciveria Snak....',
                        planttype: 'Idoor Plants',
                        size: 'Medium Size',
                        planoffer: '10%',
                        plantofferprice: '2000',
                      ),
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Outdoor Plants',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black),
                    )),
              ),
              Container(
                width: 600,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: outdoor(
                        imgs: 'assest/images/img_62.png',
                        plantrating: '*6.6',
                        price: '450/',
                        names: 'Areca Plam',
                        planttype: 'Outdoor Plants',
                        size: 'Medium Size',
                        planoffer: '20%',
                        plantofferprice: '1450',
                      ),
                    ),
                    SizedBox(width: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: outdoorsecond(
                        imgs: 'assest/images/img_63.png',
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Popular Plants',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Colors.black),
                    )),
              ),
              Container(
                width: 600,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: outdoorsecond(
                          imgs: 'assest/images/img_64.png',
                          plantrating: '4.5*',
                          price: '499/',
                          names: 'azlai drwav pi...',
                          planttype: 'Outdoor Plants',
                          size: 'large size',
                        ),
                      ),
                      SizedBox(width: 5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Indoorsecond(
                          imgs: 'assest/images/img_65.png',
                          plantrating: '4.5*',
                          price: '1999/',
                          names: 'peace liy...',
                          planttype: 'Indoor Plants',
                          size: 'large size', planoffer: '3000', plantofferprice: '20%',
                        ),
                      )
                    ]
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Desktop Plants',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Container(
                width: 600,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Indorplant(
                          imgs: 'assest/images/img_66.png',
                          plantrating: '4.5*',
                          price: '999/',
                          names: 'Plain Metal Plan...',
                          planttype: 'Indoor Plants',
                          size: 'small size',
                        ),
                      ),
                      SizedBox(width: 5),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 6.0),
                        child: Indorplant(
                          imgs: 'assest/images/img_60.png',
                          plantrating: '4.5*',
                          price: '999/',
                          names: 'oatamal boal c..',
                          planttype: 'Indoor Plants',
                          size: 'Meduim Size',
                        ),
                      ),      ]

                ),
              ),
            ]
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
                    context, MaterialPageRoute(builder: (context) => Homepage()));
              },
              icon: Icon(
                Icons.home_outlined,
                color: _selectedIndex == 0 ? Colors.white : Colors.grey,
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
                    MaterialPageRoute(builder: (context) =>   Comment()));
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

// Page One
class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.25,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
          bottomRight: Radius.circular(40),
          bottomLeft: Radius.circular(40),
        ),
      ), // Adjust height for PageOne
      child: Image.asset(
        "assest/images/img_33.png",
      ),
    );
  }
}

// Page Two
class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.025,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
          bottomRight: Radius.circular(40),
          bottomLeft: Radius.circular(40),
        ),
      ),
      child: Image.asset(
        "assest/images/img_33.png",
      ),
    );
  }
}

class Chat {
  late String names;
  late String img;
  late String title;

  Chat({required this.names, required this.img, required this.title});
}