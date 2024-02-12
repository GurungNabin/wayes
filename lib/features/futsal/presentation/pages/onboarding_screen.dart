import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wayes/features/futsal/presentation/pages/intro_screens/page1.dart';
import 'package:wayes/features/futsal/presentation/pages/intro_screens/page2.dart';
import 'package:wayes/features/futsal/presentation/pages/intro_screens/page3.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  //controller to keep  track of which page we're on
  final PageController _controller = PageController();

  //keep track of if we are on the last page or not
  bool onLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //page view
          PageView(
            controller: _controller,
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 2);
              });
            },
            children: const [
              Page1(),
              Page2(),
              Page3(),
            ],
          ),

          //dot indicators
          Container(
              alignment: const Alignment(-0.5, 0.9),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //skip
                  GestureDetector(
                    onTap: () {
                      _controller.jumpToPage(3);
                    },
                    child: Text(
                      'Skip',
                      style: TextStyle(
                          color: Colors.purple[300],
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ),

                  //dot indicator
                  SmoothPageIndicator(controller: _controller, count: 3),

                  //next or done
                  onLastPage
                      ? GestureDetector(
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) {
                            //       return const LoginPage();
                            //     },
                            //   ),
                            // );
                            Navigator.pushNamed(context, 'home-page');
                          },
                          child: Text(
                            'Let\'s go',
                            style: TextStyle(
                                color: Colors.purple[300],
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ))
                      : GestureDetector(
                          onTap: () {
                            _controller.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeIn);
                          },
                          child: Text(
                            'Next',
                            style: TextStyle(
                                color: Colors.purple[300],
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          )),
                ],
              ))
        ],
      ),
    );
  }
}
