import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 150, 8, 8),
        child: Column(
          children: [
            Lottie.asset('assets/animations/welcomeAnimation.json'),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "to the main screen",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
