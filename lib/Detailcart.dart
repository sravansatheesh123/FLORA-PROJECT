import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detailcontainner extends StatefulWidget {
  final String images;
  final String text;

  Detailcontainner({super.key, required this.text, required this.images});

  @override
  State<Detailcontainner> createState() => _DetailcontainnerState();
}

class _DetailcontainnerState extends State<Detailcontainner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,  // Adjust width if needed
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            widget.images,
            width: 55,  // Adjust image size
            height: 55,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8),  // Space between image and text
          Expanded(
            child: Text(
              widget.text,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 12,  // Adjust font size
              ),
              textAlign: TextAlign.center,  // Center-align the text
              maxLines: 2,  // Limit text to 2 lines
              overflow: TextOverflow.ellipsis,  // Add ellipsis if text overflows
            ),
          ),
        ],
      ),
    );
  }
}