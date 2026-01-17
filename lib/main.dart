import 'dart:async';
import 'package:flutter/material.dart';
import 'package:testing/boding.dart';
import 'package:testing/spalsh.dart';

// Your constant brand color
const Color kPrimaryColor = Color(0xFF3366CC);

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
    // Show first splash (Logo only) for 2 seconds
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) setState(() => _currentStep = 1);

    // Show second splash (Logo + Name + Loader) for 2 seconds
    await Future.delayed(const Duration(seconds: 2));
    if (mounted) setState(() => _currentStep = 2);
  }

  @override
  Widget build(BuildContext context) {
    if (_currentStep == 0) return const FirstSplash();
    if (_currentStep == 1) return const SecondSplash();
    return const OnboardingScreen();
  }
}
