import 'package:flutter/material.dart';
import 'package:project/Cnl.dart';

class CancelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  Cnl(
                    name: 'Areca Palm',
                    image: 'assest/img/img.png', // Correct path
                    text: "Cancelled by 18 Jun 2024",
                  ),
                  SizedBox(height: 5),
                  Cnl(
                    name: ' Plain Metal Plan...',
                    image: 'assest/img/img_1.png', // Correct path
                    text: "Cancelled by 18 Jun 2024",
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