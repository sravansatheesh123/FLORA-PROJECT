import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class populartile extends StatelessWidget {
  String imag;
  String names;
  String plantprice;
  String orignalprice;
  String plantrate;
  String offerprectange;
  String planttype;

  populartile(
      {super.key,
        required this.imag,
        required this.names,
        required this.plantprice,
        required this.orignalprice,
        required this.offerprectange,
        required this.plantrate,
        required this.planttype,});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 270,
          width: 170,
          decoration: BoxDecoration(
            color: Color(0xffC1E9D7),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            children: [
              Container(
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage(imag),
                    fit: BoxFit.fill,
                  ),

                ),
                child: Stack(
                    children:[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [


                          // Green curved container at the top-left side
                          Container(
                            height: 30,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Center(
                              child: Text(
                                planttype,
                                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.favorite_border_rounded,
                              color: Colors.red,

                            ),
                          ),
                        ],
                      ),
                    ]
                ),
              ),
              Stack(
                children:[
                  Container(
                    height: 58,
                    decoration: BoxDecoration(
                      // color: Color(0xffC1E9D7),
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10.0),


                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: Color(0xffC1E9D7),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Column(

                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(right: 25.0,),
                                  child: Text(
                                    names,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,

                                    children: [
                                      Text(
                                        plantprice,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        orignalprice,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          decoration: TextDecoration.lineThrough,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 10,
                    child: Container(
                      width: 30,
                      height: 15,
                      decoration: BoxDecoration(
                        color: Colors.green, // Yellow container
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              plantrate,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),

                  ),
                  Positioned(
                    top: 30,
                    right: 5,
                    child:   Text(
                      offerprectange,
                      style: TextStyle(
                        fontSize: 8,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),)
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}