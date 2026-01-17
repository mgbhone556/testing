// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:testing/features/slot/data/slot_respository.dart';
// import 'slot_state.dart';

// final slotRepositoryProvider = Provider((ref) => SlotRepository());

// final slotProvider = NotifierProvider<SlotNotifier, SlotState>(
//   SlotNotifier.new,
// );

// class SlotNotifier extends Notifier<SlotState> {
//   late SlotRepository _repo;

//   @override
//   SlotState build() {
//     _repo = ref.read(slotRepositoryProvider);
//     return SlotState.initial();
//   }

//   Future<void> spin() async {
//     if (state.isSpinning || state.balance < 10) return;

//     state = state.copyWith(
//       isSpinning: true,
//       balance: state.balance - 10,
//       isWin: false,
//     );

//     await Future.delayed(const Duration(milliseconds: 800));

//     final reels = _repo.spinReels();
//     final win = _repo.checkWin(reels);

//     state = state.copyWith(
//       reels: reels,
//       isSpinning: false,
//       isWin: win,
//       balance: win ? state.balance + 50 : state.balance,
//     );
//   }
// }
