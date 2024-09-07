import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wishcrt extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String size;

  Wishcrt({
    super.key,
    required this.name,
    required this.price,
    required this.size,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150, // Adjusted height to match card size
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height: 170,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Color(0xffffffff),
            ),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: [
                  // Image Container with maximum width
                  Expanded(
                    flex: 4, // Increased flex to make image container wider
                    child: Container(
                      height: 150, // Adjusted to match card page
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage(image),
                          fit: BoxFit.cover, // Image will cover the container fully
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  // Texts and Button Column
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Name
                        Flexible(
                          child: Text(
                            name,
                            style: TextStyle(
                              fontSize: 18, // Adjusted font size
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        // Size
                        Text(
                          size,
                          style: TextStyle(fontSize: 14), // Adjusted font size
                        ),
                        SizedBox(height: 10),
                        // Price
                        Text(
                          "₹$price/",
                          style: TextStyle(
                            fontSize: 18, // Adjusted font size
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 15),
                        // Add to Cart Button with Green Color
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ), // Adjusted button size
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          child: Text(
                            "Add to Cart",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14, // Adjusted font size
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Floating Image
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(top: 10, right: 10),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300], // Background color for the circular container
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close),
                  color: Colors.black, // Icon color
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
