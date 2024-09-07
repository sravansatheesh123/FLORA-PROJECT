import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project/Delivery.dart';
import 'package:project/Ongoing.dart';
import 'package:project/address.dart';
import 'package:project/homepage.dart';
import 'package:project/intro.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HOME()
    );
  }
}
class HOME extends StatefulWidget {
  const HOME({super.key});

  @override
  State<HOME> createState() => _HOMEState();
}

class _HOMEState extends State<HOME>with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  initState() {
    super.initState();

    _controller = AnimationController(
        duration: Duration(milliseconds: 5000),
        vsync: this,
        value: 0,
        lowerBound: 0,
        upperBound: 1
    );
    _animation =
        CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn);

    _controller.forward();

    Timer(Duration(seconds: 8),
            () =>
            Navigator.pushReplacement(context,
              MaterialPageRoute(builder:
                  (context) =>
                  Intro()
              ),
            )
    );
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff08A562),
      body:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child:
          Stack(
            children: [
              FadeTransition(
                opacity: _animation,
                child: Center(
                  child:
                  Image.asset('assest/images/img_1.png',height: 87,width: 159),
                ),
              ),
              Positioned(bottom: -10,
                left: -10,
                right: -10,
                child: FadeTransition(
                  opacity: _animation,
                  child: Center(
                    child:
                    Positioned(top: 692,
                        left: -15,
                        child: Image.asset('assest/images/img_2.png',height: 139,width: MediaQuery.of(context).size.width),

                  ),
                ),
              ),),

            ],
          ),
      ),
    );
  }
}
