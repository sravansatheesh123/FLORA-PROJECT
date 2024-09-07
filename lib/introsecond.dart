import 'package:flutter/material.dart';
import 'package:project/login.dart';
import 'package:project/signup.dart';

class IntroSecond extends StatefulWidget {
  const IntroSecond({super.key});

  @override
  State<IntroSecond> createState() => _IntroSecondState();
}

class _IntroSecondState extends State<IntroSecond> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffffffff),
        body: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Image.asset(
                  'assest/images/img_15.png',
                  height: size.height,
                  width: size.width,
                  fit: BoxFit.cover,
                ),
              ),
              // Floral image centered responsively
                Padding(
                  padding: const EdgeInsets.only(top: 100.0),
                  child: Align(
                    alignment:Alignment.topCenter,
                    child: Image.asset(
                      'assest/images/img_16.png',
                      height: size.height * 0.25,
                      width: size.width * 0.4,
                                  ),
                  ),
                ),
              Positioned(
                top: size.height * 0.45,
                left: size.width * 0.1,
                child: Image.asset(
                  'assest/images/img_17.png',
                  height: size.height * 0.05,
                  width: size.width * 0.5,
                ),
              ),
              Positioned(
                top: size.height * 0.50,
                left: size.width * 0.1,
                child: Image.asset(
                  'assest/images/img_18.png',
                  height: size.height * 0.05,
                  width: size.width * 0.5,
                ),
              ),
              Positioned(
                top: size.height * 0.55,
                left: size.width * 0.1,
                child: Image.asset(
                  'assest/images/img_19.png',
                  height: size.height * 0.05,
                  width: size.width * 0.7,
                ),
              ),
              Positioned(
                top: size.height * 0.65,
                left: size.width * 0.15,
                child: SizedBox(
                  width: size.width * 0.7,
                  height: size.height * 0.07,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff08A562),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Login()),
                      );
                    },
                    child: const Text("Login"),
                  ),
                ),
              ),
              Positioned(
                top: size.height * 0.75,
                left: size.width * 0.15,
                child: SizedBox(
                  width: size.width * 0.7,
                  height: size.height * 0.07,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(color: Colors.green, width: 2),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Signup()),
                      );
                    },
                    child: const Text('Signup'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
