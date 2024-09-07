import 'package:flutter/material.dart';
import 'package:project/Homepage.dart';
import 'package:project/Order.dart';

class Dvr extends StatelessWidget {
  final String image;
  final String name;
  final String text;

  Dvr({
    Key? key,
    required this.name,
    required this.text,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Container(
        height: 125,
        width: 400,

        decoration: BoxDecoration(
            color: Colors.grey[200],
          borderRadius: BorderRadius.circular(15)
        ),
        child: Row(
          children: [
            Container(
            height: 125,
            width: 100,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("${image}"),
              )
            ),),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                                          name,
                                          style: const TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                  Text(
                                          text,
                                          style: const TextStyle(
                                            fontSize: 16,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),

                                        // Buttons
                                        Padding(
                                          padding: const EdgeInsets.only(top: 10.0),
                                          child: Container(
                                            height: 60,
                                            width: 215,
                                            // color: Colors.yellow,
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () {Navigator.push(
                                                    context, MaterialPageRoute(builder: (context) =>Homepage()),);
                                                    // Handle "Cancel" button press
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor: Colors.white, // Background color
                                                    foregroundColor: Colors.black,   // Text color
                                                  ),
                                                  child: Text('order again'),
                                                ),

                                                ElevatedButton(
                                                  onPressed: () {
                                                    // Handle button press
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor: Colors.white,
                                                    foregroundColor: Colors.green, // Text color
                                                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8), // Adjust padding
                                                  ),
                                                  child: Text(
                                                    'add review',
                                                    style: TextStyle(fontSize: 14), // Adjust font size if needed
                                                    overflow: TextOverflow.ellipsis, // Handle long text
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),


                ],
              ),
            )
          ],
        ),

      ),
    );












    // return Container(
    //   height: 250,
    //   width: double.infinity,
    //   child: Stack(
    //     children: [
    //       Container(
    //         height: 250,
    //         width: double.infinity,
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(30),
    //           color: Colors.white,
    //         ),
    //         child: Padding(
    //           padding: const EdgeInsets.all(16.0),
    //           child: Row(
    //             children: [
    //               // Image Container
    //               Flexible(
    //                 flex: 3,
    //                 child: Container(
    //                   height: 200, // Adjusted for better fit
    //                   decoration: BoxDecoration(
    //                     image: DecorationImage(
    //                       image: AssetImage(image),
    //                       fit: BoxFit.cover,
    //                     ),
    //                     borderRadius: BorderRadius.circular(15),
    //                   ),
    //                 ),
    //               ),
    //               const SizedBox(width: 10),
    //               // Texts Column
    //               Expanded(
    //                 flex: 3,
    //                 child: Column(
    //                   crossAxisAlignment: CrossAxisAlignment.start,
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     // Name
    //                     Text(
    //                       name,
    //                       style: const TextStyle(
    //                         fontSize: 20,
    //                         fontWeight: FontWeight.bold,
    //                         overflow: TextOverflow.ellipsis,
    //                       ),
    //                     ),
    //                     const SizedBox(height: 10),
    //                     // Additional text if needed
    //                     Text(
    //                       text,
    //                       style: const TextStyle(
    //                         fontSize: 16,
    //                         overflow: TextOverflow.ellipsis,
    //                       ),
    //                     ),
    //                     const SizedBox(height: 10),
    //                     // Buttons
    //                     Row(
    //                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                       children: [
    //                         ElevatedButton(
    //                           onPressed: () {Navigator.push(
    //                             context, MaterialPageRoute(builder: (context) =>Homepage()),);
    //                             // Handle "Cancel" button press
    //                           },
    //                           style: ElevatedButton.styleFrom(
    //                             backgroundColor: Colors.white, // Background color
    //                             foregroundColor: Colors.black,   // Text color
    //                           ),
    //                           child: Text('order again'),
    //                         ),
    //
    //                         Flexible(
    //                           child: ElevatedButton(
    //                             onPressed: () {
    //                               // Handle button press
    //                             },
    //                             style: ElevatedButton.styleFrom(
    //                               backgroundColor: Colors.white,
    //                               foregroundColor: Colors.green, // Text color
    //                               padding: EdgeInsets.symmetric(vertical: 12, horizontal: 8), // Adjust padding
    //                             ),
    //                             child: Text(
    //                               'add review',
    //                               style: TextStyle(fontSize: 14), // Adjust font size if needed
    //                               overflow: TextOverflow.ellipsis, // Handle long text
    //                             ),
    //                           ),
    //                         ),
    //
    //                       ],
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
  }
}