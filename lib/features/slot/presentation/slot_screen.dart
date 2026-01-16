import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:testing/features/slot/domain/slot_notifier.dart';

class SlotScreen extends ConsumerWidget {
  const SlotScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(slotProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('Slot Game')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Balance: ${state.balance}',
            style: const TextStyle(fontSize: 20),
          ),

          const SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: state.reels
                .map((e) => Text(e, style: const TextStyle(fontSize: 50)))
                .toList(),
          ),

          const SizedBox(height: 20),

          if (state.isWin)
            const Text(
              '🎉 YOU WIN!',
              style: TextStyle(fontSize: 22, color: Colors.green),
            ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: state.isSpinning
                ? null
                : () => ref.read(slotProvider.notifier).spin(),
            child: const Text('SPIN'),
          ),
        ],
      ),
    );
  }
}
