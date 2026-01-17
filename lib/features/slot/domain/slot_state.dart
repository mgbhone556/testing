// class SlotState {
//   final List<String> reels;
//   final int balance;
//   final bool isSpinning;
//   final bool isWin;

//   SlotState({
//     required this.reels,
//     required this.balance,
//     required this.isSpinning,
//     required this.isWin,
//   });

//   factory SlotState.initial() {
//     return SlotState(
//       reels: ['🍒', '🍋', '⭐'],
//       balance: 1000,
//       isSpinning: false,
//       isWin: false,
//     );
//   }

//   SlotState copyWith({
//     List<String>? reels,
//     int? balance,
//     bool? isSpinning,
//     bool? isWin,
//   }) {
//     return SlotState(
//       reels: reels ?? this.reels,
//       balance: balance ?? this.balance,
//       isSpinning: isSpinning ?? this.isSpinning,
//       isWin: isWin ?? this.isWin,
//     );
//   }
// }
