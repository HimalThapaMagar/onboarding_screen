import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 150, 8, 8),
        child: Column(
          children: [
            Lottie.asset('assets/animations/helloAnimation.json'),
            const Text("This is first page.",style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),),
          ],
        ),
      ),
    );
  }
}
