



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Odercart extends StatelessWidget {
  final String image;
  final String name;
  final String price;
  final String discount;

  Odercart({
    super.key,
    required this.name,
    required this.price,
    required this.image,
     required this.discount,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color(0xffffffff),
            ),
            child: Padding(
              padding: EdgeInsets.zero,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Image Container
                  Flexible(
                    flex: 3,
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(image),fit: BoxFit.fill
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
                        // Text(
                        //   size,
                        //   style: TextStyle(fontSize: 16),
                        // ),
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
                              image: AssetImage("assest/images/img_47.png"),
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text("Estimated delivery by"),
                            Text("30th june 2024",style: TextStyle(color: Colors.green),),
                          ],
                        )

                      ],
                    ),
                  ),
                  // Floating Image
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

