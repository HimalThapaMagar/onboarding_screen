import 'package:flutter/material.dart';
import 'package:onboarding_screen/mainscreen.dart';
import 'package:onboarding_screen/onboarding.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  // runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool seenOnboarding = prefs.getBool('seenOnboarding') ?? false;
  runApp(MyApp(seenOnboarding: seenOnboarding));
}

class MyApp extends StatelessWidget {
  final bool seenOnboarding;
  const MyApp({super.key,this.seenOnboarding = false});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: seenOnboarding ? const MainScreen() : const OnboardingScreen(),
    );
  }
}
