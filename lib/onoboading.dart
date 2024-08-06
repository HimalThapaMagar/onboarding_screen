import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
          controller: _controller,
          children: [
            Container(
              color: Colors.red,
              child: Center(
                child: Text('Page 1'),
              ),
            ),
            Container(
              color: Colors.blue,
              child: Center(
                child: Text('Page 2'),
              ),
            ),
            Container(
              color: Colors.green,
              child: Center(
                child: Text('Page 3'),
              ),
            ),
          ],
        ),
        SmoothPageIndicator(controller: _controller, count: 3)
      ],
      ),
    );
  }
}
