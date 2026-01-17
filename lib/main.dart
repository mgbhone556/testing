import 'dart:async';
import 'package:flutter/material.dart';
// Note: Ensure these file names match your actual project structure
import 'package:testing/boding.dart';
import 'package:testing/spalsh.dart';

// 1. Your global constant brand color
const Color kPrimaryColor = Color(0xFF3366CC);

// 2. The entry point of the application
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctory App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: kPrimaryColor, useMaterial3: true),
      // Starting with the flow manager
      home: const MainAppFlow(),
    );
  }
}

// 3. Your MainAppFlow Logic
class MainAppFlow extends StatefulWidget {
  const MainAppFlow({super.key});

  @override
  State<MainAppFlow> createState() => _MainAppFlowState();
}

class _MainAppFlowState extends State<MainAppFlow> {
  int _currentStep = 0; // 0: Splash1, 1: Splash2, 2: Onboarding

  @override
  void initState() {
    super.initState();
    _startSequence();
  }

  void _startSequence() async {
    // Show first splash for 2 seconds
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) setState(() => _currentStep = 1);

    // Show second splash for 2 seconds
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) setState(() => _currentStep = 2);
  }

  @override
  Widget build(BuildContext context) {
    // These widgets must be defined in your splash.dart and boding.dart files
    if (_currentStep == 0) return const FirstSplash();
    if (_currentStep == 1) return const SecondSplash();
    return const OnboardingScreen();
  }
}
