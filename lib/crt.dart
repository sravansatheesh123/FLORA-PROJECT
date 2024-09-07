import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class crt extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String? discount;
  final String size;

  crt({
    super.key,
    required this.name,
    required this.price,
    required this.size,
    required this.image,
    this.discount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height: 180,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Color(0xffffffff),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Image Container
                Flexible(
                  flex: 3,
                  child: Container(
                    height: 170,
                    width: 150, // Adjusted the image width to 150
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                // Texts Column
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Name
                      Flexible(
                        child: Text(
                          name,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      // Size
                      Text(
                        size,
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 10),
                      // Price and Discount Row
                      Row(
                        children: [
                          Text(
                            "₹$price/",
                            style: TextStyle(fontSize: 20),
                          ),
                          if (discount != null)
                            Text(
                              discount!,
                              style: TextStyle(
                                fontSize: 20,
                                decoration: TextDecoration.lineThrough,
                                color: Colors.red,
                              ),
                            ),
                        ],
                      ),
                      SizedBox(height: 10),
                      // Button Image Container
                      Container(
                        height: 50,
                        width: 80,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assest/images/img_38.png"),
                          ),
                        ),
                      ),
                    ],
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
          ),
        ],
      ),
    );
  }
}
