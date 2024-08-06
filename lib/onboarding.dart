import 'package:flutter/material.dart';
import 'package:onboarding_screen/mainscreen.dart';
import 'package:onboarding_screen/onboarding_screens/onboarding_screen1.dart';
import 'package:onboarding_screen/onboarding_screens/onboarding_screen2.dart';
import 'package:onboarding_screen/onboarding_screens/onboarding_screen3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  bool islastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            onPageChanged: (int page) {
              if (page == 2) {
                setState(() {
                  islastPage = true;
                });
              } else {
                setState(() {
                  islastPage = false;
                });
              }
            },
            children: const[
              OnboardingPage1(),
              OnboardingPage2(),
              OnboardingPage3(),
            ],
          ),
          Container(
            alignment: const Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //skip button here
                TextButton(
                  onPressed: () {
                    _controller.animateToPage(2,
                        duration: const Duration(milliseconds: 600),
                        curve: Curves.easeIn);
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),

                SmoothPageIndicator(controller: _controller, count: 3),

                //next button here
                islastPage
                    ? TextButton(
                        onPressed: () => {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MainScreen()),
                            (Route<dynamic> route) => false,
                          ),
                        },
                        child: const Text(
                          'Done',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      )
                    : TextButton(
                        onPressed: () {
                          _controller.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.linear);
                        },
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
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
