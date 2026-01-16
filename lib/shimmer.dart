// import 'package:flutter/material.dart';
// import 'package:shimmer/shimmer.dart';

// class FoodCardShimmer extends StatelessWidget {
//   const FoodCardShimmer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 12),
//       child: Shimmer.fromColors(
//         baseColor: Colors.grey.shade300,
//         highlightColor: Colors.grey.shade100,
//         child: Container(
//           height: 100,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(18),
//           ),
//           child: Row(
//             children: [
//               /// IMAGE PLACEHOLDER
//               Container(
//                 width: 110,
//                 height: 100,
//                 decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.horizontal(
//                     left: Radius.circular(18),
//                   ),
//                 ),
//               ),

//               /// TEXT PLACEHOLDER
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.all(12),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       _box(width: double.infinity, height: 14),
//                       const SizedBox(height: 8),
//                       _box(width: 150, height: 12),
//                       const SizedBox(height: 12),
//                       _box(width: 80, height: 14),
//                     ],
//                   ),
//                 ),
//               ),

//               /// BUTTON PLACEHOLDER
//               Padding(
//                 padding: const EdgeInsets.only(right: 12),
//                 child: _box(width: 36, height: 36, radius: 18),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _box({
//     required double width,
//     required double height,
//     double radius = 6,
//   }) {
//     return Container(
//       width: width,
//       height: height,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(radius),
//       ),
//     );
//   }
// }
