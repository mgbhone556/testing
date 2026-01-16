import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testing/features/slot/domain/slot_notifier.dart';

class SlotScreen extends ConsumerWidget {
  const SlotScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(slotProvider);

    return Scaffold(
      backgroundColor: Colors.grey[900], // Dark theme looks better for slots
      appBar: AppBar(
        title: const Text('Slot Game'),
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Balance: \$${state.balance}',
            style: TextStyle(
              fontSize: 24,
              color: Colors.yellow,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 40),

          // The Reels Row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(state.reels.length, (index) {
              return ReelWidget(
                symbol: state.reels[index],
                isSpinning: state.isSpinning,
              );
            }),
          ),

          const SizedBox(height: 40),

          if (state.isWin)
            Text(
              '🎉 BIG WIN! 🎉',
              style: TextStyle(
                fontSize: 32,
                color: Colors.amber,
                fontWeight: FontWeight.bold,
              ),
            ),

          const SizedBox(height: 40),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              backgroundColor: Colors.redAccent,
            ),
            onPressed: state.isSpinning
                ? null
                : () => ref.read(slotProvider.notifier).spin(),
            child: const Text(
              'SPIN',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class ReelWidget extends StatefulWidget {
  final String symbol;
  final bool isSpinning;

  const ReelWidget({super.key, required this.symbol, required this.isSpinning});

  @override
  State<ReelWidget> createState() => _ReelWidgetState();
}

class _ReelWidgetState extends State<ReelWidget> {
  late FixedExtentScrollController _controller;
  final List<String> _allSymbols = ['🍒', '🍋', '🔔', '💎', '7️⃣', '🍇', '🍉'];

  @override
  void initState() {
    super.initState();
    _controller = FixedExtentScrollController();
  }

  @override
  void didUpdateWidget(ReelWidget oldWidget) {
    super.didUpdateWidget(oldWidget);

    // When the "spinning" state starts or the symbol changes, animate the wheel
    if (widget.symbol != oldWidget.symbol || widget.isSpinning) {
      final targetIndex = _allSymbols.indexOf(widget.symbol);

      // Animate to the new symbol with a "rolling" effect
      _controller.animateToItem(
        targetIndex +
            (_allSymbols.length * 2), // Adds extra rotations for realism
        duration: const Duration(milliseconds: 800),
        curve: Curves.elasticOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 120, // Height of the slot window
      width: 80, // Width of one reel
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.yellow, width: 3),
      ),
      child: ListWheelScrollView.useDelegate(
        controller: _controller,
        itemExtent: 60,
        physics: const FixedExtentScrollPhysics(),
        childDelegate: ListWheelChildLoopingListDelegate(
          children: _allSymbols
              .map(
                (s) => Center(
                  child: Text(s, style: const TextStyle(fontSize: 40)),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
