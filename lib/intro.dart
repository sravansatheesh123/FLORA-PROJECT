import 'package:flutter/material.dart';
import 'package:project/introsecond.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  final PageController _pageController = PageController(initialPage: 0, viewportFraction: 1);
  int _activePage = 0;

  final List<Widget> _pages = [
    const PageOne(),
    const PageTwo(),
    const PageThree(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (int page) {
              setState(() {
                _activePage = page;
              });
            },
            itemCount: _pages.length,
            itemBuilder: (BuildContext context, int index) {
              return _pages[index];
            },
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * 0.1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List<Widget>.generate(
                _pages.length,
                    (index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: InkWell(
                    onTap: () {
                      _pageController.animateToPage(index,
                          duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
                    },
                    child: CircleAvatar(
                      radius: 6,
                      backgroundColor: _activePage == index ? Colors.green : Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _parentState = context.findAncestorStateOfType<_IntroState>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Positioned(
              top: size.height * 0.10,
              left: size.width * 0.3,
              child: Image.asset('assest/images/img_3.png', height: size.height * 0.45, width: size.width * 0.4),
            ),
            Positioned(
              top: size.height * 0.01,
              left: size.width * 0.75,
              child: Image.asset('assest/images/img_4.png', height: size.height * 0.2, width: size.width * 0.2),
            ),
            Positioned(
              bottom: 0.01,
              left: 0.1,
              child: Image.asset('assest/images/img_5.png', height: size.height * 0.1, width: size.width * 0.2),
            ),
            Positioned(
              top: size.height * 0.5,
              left: size.width * 0.27,
              child: Image.asset('assest/images/img_6.png', height: size.height * 0.1, width: size.width * 0.5),
            ),
            Positioned(
              top: size.height * 0.7,
              left: size.width * 0.40,
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff08A562)),
                  onPressed: () {
                    _parentState!._pageController.nextPage(
                        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
                    _parentState.setState(() {
                      _parentState._activePage = 1;
                    });
                  },
                  child: const Text("Next"),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.8,
              left: size.width * 0.43,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const IntroSecond()),
                  );
                },
                child: const Text('Skip'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _parentState = context.findAncestorStateOfType<_IntroState>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Positioned(
              top: size.height * 0.10,
              left: size.width * 0.3, // Matching position with PageOne
              child: Image.asset('assest/images/img_8.png', height: size.height * 0.45, width: size.width * 0.4),
            ),
            Positioned(
              top: size.height * 0.01,
              left: size.width * 0.75,
              child: Image.asset('assest/images/img_9.png', height: size.height * 0.2, width: size.width * 0.2),
            ),
            Positioned(
              bottom: 0.01,
              left: 0.1,
              child: Image.asset('assest/images/img_5.png', height: size.height * 0.1, width: size.width * 0.2),
            ),
            Positioned(
              top: size.height * 0.5,
              left: size.width * 0.27,
              child: Image.asset('assest/images/img_10.png', height: size.height * 0.1, width: size.width * 0.5),
            ),
            Positioned(
              top: size.height * 0.7,
              left: size.width * 0.40,
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff08A562)),
                  onPressed: () {
                    _parentState!._pageController.nextPage(
                        duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
                    _parentState.setState(() {
                      _parentState._activePage = 2;
                    });
                  },
                  child: const Text("Next"),
                ),
              ),
            ),
            Positioned(
              top: size.height * 0.8,
              left: size.width * 0.43,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const IntroSecond()),
                  );
                },
                child: const Text('Skip'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final _parentState = context.findAncestorStateOfType<_IntroState>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Positioned(
              top: size.height * 0.10,
              left: size.width * 0.3,
              child: Image.asset('assest/images/img_11.png', height: size.height * 0.45, width: size.width * 0.4),
            ),
            Positioned(
              top: size.height * 0.01,
              left: size.width * 0.75,
              child: Image.asset('assest/images/img_12.png', height: size.height * 0.2, width: size.width * 0.2),
            ),
            Positioned(
              bottom: 0.01,
              left: 0.1,
              child: Image.asset('assest/images/img_13.png', height: size.height * 0.1, width: size.width * 0.2),
            ),
            Positioned(
              top: size.height * 0.5,
              left: size.width * 0.27,
              child: Image.asset('assest/images/img_14.png', height: size.height * 0.1, width: size.width * 0.5),
            ),
            Positioned(
              top: size.height * 0.7,
              left: size.width * 0.40,
              child: Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xff08A562)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const IntroSecond()),
                    );
                  },
                  child: const Text("Get Started"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
