import 'package:birdle/game.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('contains ten answer words and ten additional guesses', () {
    expect(legalWords, hasLength(10));
    expect(legalGuesses, hasLength(10));
    expect(legalWords.every((word) => word.length == 5), isTrue);
    expect(legalGuesses.every((word) => word.length == 5), isTrue);
    expect(legalWords.toSet().intersection(legalGuesses.toSet()), isEmpty);
    expect(allLegalGuesses, hasLength(20));
  });

  test('accepts answer words and additional guesses', () {
    final game = Game(seed: 0);

    expect(game.isLegalGuess('aback'), isTrue);
    expect(game.isLegalGuess('bread'), isTrue);
  });
}
