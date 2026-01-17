// Screen 1: Simple Logo Reveal
import 'package:flutter/material.dart';
import 'package:testing/main.dart';

class FirstSplash extends StatelessWidget {
  const FirstSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.favorite, color: kPrimaryColor, size: 40),
              const SizedBox(width: 12),
              Text(
                "Doctory",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[850],
                ),
              ),
            ],
          ),
          const Spacer(flex: 2),
          // Circular progress matches the blue dots in your image
          const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(kPrimaryColor),
            strokeWidth: 4,
          ),
          const SizedBox(height: 60),
        ],
      ),
    );
  }
}

// Screen 2: Brand Name + Loading Animation
class SecondSplash extends StatelessWidget {
  const SecondSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Icon(Icons.favorite, color: kPrimaryColor, size: 80)),
    );
  }
}
