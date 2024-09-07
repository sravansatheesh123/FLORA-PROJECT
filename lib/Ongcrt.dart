import 'package:flutter/material.dart';
import 'package:project/Track.dart';

class Ongcrt extends StatelessWidget {
  final String image;
  final String name;
  final String text;

  Ongcrt({
    Key? key,
    required this.name,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Parse the text to separate the delivery date part
    final List<String> textParts = text.split('by ');
    final String preDeliveryText = textParts[0];
    final String deliveryDate = textParts[1];

    return Container(
      height: 120,
      width: double.infinity,

      child: Stack(
        children: [
          Container(
            height: 250,

            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[200],
            ),
            child: Row(
              children: [
                // Image Container
                Container(
                  height: 120,
                  width: 120,// Adjusted for better fit
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
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
                      Text(
                        name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(height: 10),
                      // Description with styled text
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                              text: preDeliveryText, // Text up to "by"
                              style: TextStyle(color: Colors.black),
                            ),
                            TextSpan(
                              text: 'by ', // 'by ' is in black
                              style: TextStyle(color: Colors.black),
                            ),
                            TextSpan(
                              text: deliveryDate, // Delivery date is in green
                              style: TextStyle(color: Colors.green),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      // Buttons Row
                      Container(
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                              onPressed: () {
                                // Handle "Cancel" button press
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white, // Background color
                                foregroundColor: Colors.red,   // Text color
                              ),
                              child: Text('Cancel'),
                            ),

                            ElevatedButton(
                              onPressed: () {Navigator.push(
                                context, MaterialPageRoute(builder: (context) =>Track()),);
                                // Handle "Track" button press
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.green,// Background color
                              ),
                              child: Text('Track '),
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
    );
  }
}
