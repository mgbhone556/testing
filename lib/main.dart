import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // 1. Add this import
import 'package:testing/features/slot/presentation/slot_screen.dart';
import 'package:testing/shimmer.dart';

void main() {
  // 2. Wrap your app in ProviderScope
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SlotScreen(),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   bool isLoading = true;
//   @override
//   void initState() {
//     super.initState();
//     // Simulate data loading
//     Future.delayed(const Duration(seconds: 3), () {
//       setState(() {
//         isLoading = false; // Stop shimmer
//       });
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF5F5F5),
//       appBar: AppBar(title: const Text('Food Menu'), centerTitle: true),
//       body: ListView(
//         padding: const EdgeInsets.all(12),
//         children: isLoading
//             ? List.generate(4, (_) => const FoodCardShimmer())
//             : const [
//                 FoodCard(
//                   name: 'Chicken Burger',
//                   description: 'Juicy grilled chicken with cheese',
//                   price: 4500,
//                   oldPrice: 5500,
//                   isOpen: true,
//                 ),
//                 FoodCard(
//                   name: 'Spicy Pizza',
//                   description: 'Hot & spicy pepperoni pizza',
//                   price: 12000,
//                   oldPrice: 0,
//                   isOpen: false,
//                 ),
//               ],
//       ),
//     );
//   }
// }

// class FoodCard extends StatelessWidget {
//   final String name;
//   final String description;
//   final int price;
//   final int oldPrice;
//   final bool isOpen;

//   const FoodCard({
//     super.key,
//     required this.name,
//     required this.description,
//     required this.price,
//     required this.oldPrice,
//     required this.isOpen,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 12),
//       child: InkWell(
//         borderRadius: BorderRadius.circular(18),
//         onTap: isOpen ? () {} : null,
//         child: Container(
//           height: 100,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(18),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.06),
//                 blurRadius: 12,
//                 offset: const Offset(0, 6),
//               ),
//             ],
//           ),
//           child: Row(
//             children: [
//               /// IMAGE
//               Stack(
//                 children: [
//                   Container(
//                     width: 110,
//                     height: 100,
//                     decoration: const BoxDecoration(
//                       borderRadius: BorderRadius.horizontal(
//                         left: Radius.circular(18),
//                       ),
//                       image: DecorationImage(
//                         image: NetworkImage('https://picsum.photos/200'),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   if (!isOpen)
//                     Container(
//                       width: 110,
//                       height: 100,
//                       decoration: BoxDecoration(
//                         color: Colors.black.withOpacity(0.45),
//                         borderRadius: const BorderRadius.horizontal(
//                           left: Radius.circular(18),
//                         ),
//                       ),
//                       child: const Center(
//                         child: Text(
//                           'Not Available',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 12,
//                           ),
//                         ),
//                       ),
//                     ),
//                 ],
//               ),

//               /// CONTENT
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 12,
//                     vertical: 10,
//                   ),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Text(
//                         name,
//                         maxLines: 1,
//                         overflow: TextOverflow.ellipsis,
//                         style: const TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.w700,
//                         ),
//                       ),
//                       const SizedBox(height: 4),
//                       Text(
//                         description,
//                         maxLines: 1,
//                         overflow: TextOverflow.ellipsis,
//                         style: const TextStyle(
//                           fontSize: 13,
//                           color: Colors.grey,
//                         ),
//                       ),
//                       const SizedBox(height: 8),
//                       Row(
//                         children: [
//                           if (oldPrice > 0)
//                             Text(
//                               'Ks $oldPrice',
//                               style: const TextStyle(
//                                 fontSize: 13,
//                                 color: Colors.grey,
//                                 decoration: TextDecoration.lineThrough,
//                               ),
//                             ),
//                           if (oldPrice > 0) const SizedBox(width: 6),
//                           Text(
//                             'Ks $price',
//                             style: const TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.deepOrange,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ),

//               /// ADD BUTTON
//               Padding(
//                 padding: const EdgeInsets.only(right: 12),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: isOpen ? Colors.deepOrange : Colors.grey,
//                     shape: BoxShape.circle,
//                   ),
//                   child: IconButton(
//                     icon: const Icon(Icons.add, color: Colors.white),
//                     onPressed: isOpen ? () {} : null,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
