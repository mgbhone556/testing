// import 'package:flutter/material.dart';
// import 'package:testing/main.dart';

// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({super.key});

//   @override
//   State<OnboardingScreen> createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {
//   final PageController _controller = PageController();
//   int _currentIndex = 0;

//   final List<Map<String, String>> _data = [
//     {
//       "title": "Welcome to\nDoctory! 👋",
//       "desc":
//           "The best online doctor appointment & consultation app of the century for your health and medical needs!",
//     },
//     {
//       "title": "Thousands of\ndoctors & experts to\nhelp your health!",
//       "desc":
//           "Access professional medical advice from the comfort of your home.",
//     },
//     {
//       "title": "Health checks &\nconsultations easily\nanywhere anytime",
//       "desc": "Schedule appointments and chat with doctors in real-time.",
//     },
//     {
//       "title": "Let's start living\nhealthy and well\nwith us right now!",
//       "desc":
//           "Join our community and take the first step towards a better life.",
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: Column(
//           children: [
//             Expanded(
//               child: PageView.builder(
//                 controller: _controller,
//                 onPageChanged: (i) => setState(() => _currentIndex = i),
//                 itemCount: _data.length,
//                 itemBuilder: (context, i) => OnboardingBody(
//                   title: _data[i]['title']!,
//                   desc: _data[i]['desc']!,
//                   index: i,
//                 ),
//               ),
//             ),
//             // Indicators & Button
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 30),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: List.generate(4, (i) => buildDot(i)),
//                   ),
//                   const SizedBox(height: 30),
//                   ElevatedButton(
//                     onPressed: () {
//                       if (_currentIndex < 3) {
//                         _controller.nextPage(
//                           duration: const Duration(milliseconds: 400),
//                           curve: Curves.easeInOut,
//                         );
//                       }
//                     },
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: kPrimaryColor,
//                       minimumSize: const Size(double.infinity, 55),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                     ),
//                     child: Text(
//                       _currentIndex == 3 ? "Get Started" : "Next",
//                       style: const TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildDot(int index) {
//     return AnimatedContainer(
//       duration: const Duration(milliseconds: 200),
//       margin: const EdgeInsets.only(right: 8),
//       height: 8,
//       width: _currentIndex == index ? 24 : 8,
//       decoration: BoxDecoration(
//         color: _currentIndex == index ? kPrimaryColor : Colors.grey[300],
//         borderRadius: BorderRadius.circular(10),
//       ),
//     );
//   }
// }

// class OnboardingBody extends StatelessWidget {
//   final String title, desc;
//   final int index;
//   const OnboardingBody({
//     super.key,
//     required this.title,
//     required this.desc,
//     required this.index,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         const SizedBox(height: 40),
//         // Image Placeholder (This is where the illustrations go)
//         Expanded(
//           child: Container(
//             margin: const EdgeInsets.all(20),
//             decoration: BoxDecoration(
//               color: Colors.blue[50],
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Center(
//               child: Icon(
//                 Icons.medical_services_outlined,
//                 size: 100,
//                 color: kPrimaryColor.withOpacity(0.5),
//               ),
//             ),
//           ),
//         ),
//         const SizedBox(height: 40),
//         Text(
//           title,
//           textAlign: TextAlign.center,
//           style: const TextStyle(
//             fontSize: 28,
//             fontWeight: FontWeight.bold,
//             color: kPrimaryColor,
//           ),
//         ),
//         const SizedBox(height: 20),
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 40),
//           child: Text(
//             desc,
//             textAlign: TextAlign.center,
//             style: const TextStyle(fontSize: 15, color: Colors.black54),
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:testing/main.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> _data = [
    {
      "title": "Welcome to\nDoctory! 👋",
      "desc":
          "The best online doctor appointment & consultation app of the century for your health and medical needs!",
    },
    {
      "title": "Thousands of\ndoctors & experts to\nhelp your health!",
      "desc":
          "Access professional medical advice from the comfort of your home.",
    },
    {
      "title": "Health checks &\nconsultations easily\nanywhere anytime",
      "desc": "Schedule appointments and chat with doctors in real-time.",
    },
    {
      "title": "Let's start living\nhealthy and well\nwith us right now!",
      "desc":
          "Join our community and take the first step towards a better life.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                onPageChanged: (i) => setState(() => _currentIndex = i),
                itemCount: _data.length,
                itemBuilder: (context, i) => OnboardingBody(
                  title: _data[i]['title']!,
                  desc: _data[i]['desc']!,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  // Animated Dots
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(4, (i) => buildDot(i)),
                  ),
                  const SizedBox(height: 32),
                  // Dynamic Button
                  ElevatedButton(
                    onPressed: () {
                      if (_currentIndex < 3) {
                        _controller.nextPage(
                          duration: const Duration(milliseconds: 400),
                          curve: Curves.easeInOut,
                        );
                      } else {
                        // Navigate to Login Screen
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kPrimaryColor,
                      minimumSize: const Size(double.infinity, 56),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      _currentIndex == 3 ? "Get Started" : "Next",
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDot(int index) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 8),
      height: 8,
      width: _currentIndex == index ? 24 : 8,
      decoration: BoxDecoration(
        color: _currentIndex == index ? kPrimaryColor : Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class OnboardingBody extends StatelessWidget {
  final String title, desc;
  const OnboardingBody({super.key, required this.title, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        // Image Placeholder - replace with your actual illustration assets
        Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.blue[50],
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Icon(Icons.image, size: 100, color: kPrimaryColor),
            ),
          ),
        ),
        const SizedBox(height: 40),
        Text(
          title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Text(
            desc,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 15, color: Colors.black54),
          ),
        ),
      ],
    );
  }
}
