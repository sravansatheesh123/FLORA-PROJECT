import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Indorplant extends StatefulWidget {
  final String imgs;
  final String names;
  final String price;
  final String size;
  final String plantrating;
  final String planttype;

  Indorplant({
    super.key,
    required this.imgs,
    required this.plantrating,
    required this.price,
    required this.names,
    required this.planttype,
    required this.size,
  });

  @override
  State<Indorplant> createState() => _IndorplantState();
}

class _IndorplantState extends State<Indorplant> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                width: 170,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: AssetImage(widget.imgs),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: 8,
                right: 15,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: Icon(Icons.favorite_outline, color: Colors.red),
                    onPressed: () {
                      // Handle favorite button press
                    },
                  ),
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Text(
                    widget.planttype,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),

          // Row for the name and small green container with plantrating
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // Aligns the content with space between
            children: [
              Text(
                widget.names,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Positioned(right: 50,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Text(
                    widget.plantrating,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
            ],
          ),

          Row(
            // Aligns price and size with space between
            children: [
              Text(
                widget.price,
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                widget.size,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}