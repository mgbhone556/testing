import 'dart:math';

class SlotRepository {
  final _symbols = ['🍒', '🍋', '⭐', '🔔', '💎'];
  final _random = Random();

  List<String> spinReels() {
    return List.generate(3, (_) => _symbols[_random.nextInt(_symbols.length)]);
  }

  bool checkWin(List<String> reels) {
    return reels[0] == reels[1] && reels[1] == reels[2];
  }
}
