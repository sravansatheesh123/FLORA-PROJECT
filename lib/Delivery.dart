import 'package:flutter/material.dart';
import 'package:project/Dvr.dart';

class Delivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //   appBar: AppBar(
    //   backgroundColor: Colors.white,
    //   leading: IconButton(
    //     onPressed: () {
    //       Navigator.pop(context); // Action to pop the current screen
    //     },
    //     icon: Icon(
    //       Icons.arrow_back_ios_sharp,
    //       color: Colors.black, // Set the icon color to black
    //       size: 15,
    //     ),
    //   ),
    // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image.asset(
            //   "assest/images/img_89.png", // Ensure the path is correct
            //   height: 60,
            //   width: MediaQuery.of(context).size.width, // Full screen width
            //   fit: BoxFit.fitWidth,
            // ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Dvr(
                    name: 'Peace Lily',
                    image: 'assest/images/img_90.png', // Correct path
                    text: "Delivered by 20 Jun 2024",
                  ),
                  SizedBox(height: 5),
                  Dvr(
                    name: ' Sansiveria Snak...',
                    image: 'assest/images/img_91.png', // Correct path
                    text: "Delivered by 05 May 2024",
                  ),
                  SizedBox(height: 5),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}