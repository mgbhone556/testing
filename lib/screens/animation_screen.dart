// import 'package:flutter/material.dart';
// import 'package:testing/model.dart';
// import 'package:testing/second_screen.dart';

// class AnimationScreen extends StatefulWidget {
//   const AnimationScreen({super.key});

//   @override
//   State<AnimationScreen> createState() => _AnimationScreenState();
// }

// class _AnimationScreenState extends State<AnimationScreen> {
//   // State variable
//   bool isPressed = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Animation Screen')),
//       body: Container(
//         color: isPressed ? Colors.blue : Colors.white, // change color on press
//         child: Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               Text(
//                 isPressed ? 'Button Pressed!' : 'Animation Screen',
//                 style: const TextStyle(fontSize: 24),
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     isPressed = !isPressed; // toggle state
//                   });
//                 },
//                 child: const Text('Press Me'),
//               ),
//               InkWell(
//                 onTap: () {
//                   print("Tapped");
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text("Custom Button Tapped")),
//                   );
//                 },
//                 child: Container(
//                   padding: EdgeInsets.all(16),
//                   color: Colors.green,
//                   child: Text("Custom Button"),
//                 ),
//               ),
//               TextButton(
//                 onPressed: () {
//                   // This runs when the button is pressed
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text("TextButton Pressed!")),
//                   );
//                 },
//                 child: const Text("Press Me", style: TextStyle(fontSize: 20)),
//               ),
//               InkWell(
//                 child: Text('ssdsfs'),
//                 onTap: () {
//                   print("Tapped");
//                   ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text("Custom Button Tapped")),
//                   );
//                 },
//               ),
//               // First screen
//               ElevatedButton(
//                 onPressed: () {
//                   User user = User(
//                     id: "001",
//                     name: "John Doe",
//                     email: "john@example.com",
//                     age: 25,
//                   );

//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (_) =>
//                           SecondScreen(user: user), // pass user here
//                     ),
//                   );
//                 },
//                 child: const Text("Go to Second Screen"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
