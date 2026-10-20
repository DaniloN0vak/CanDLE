import 'package:birdle/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('submits a legal guess and fills the tiles', (tester) async {
    await tester.pumpWidget(const MainApp());

    await tester.enterText(find.byType(TextField), 'aback');
    await tester.tap(find.byIcon(Icons.arrow_circle_up_outlined));
    await tester.pumpAndSettle();

    expect(find.text('A'), findsNWidgets(2));
    expect(find.text('B'), findsOneWidget);
    expect(find.text('C'), findsOneWidget);
    expect(find.text('K'), findsOneWidget);
  });

  testWidgets('rejects guesses that are not in the word list', (tester) async {
    await tester.pumpWidget(const MainApp());

    await tester.enterText(find.byType(TextField), 'hello');
    await tester.tap(find.byIcon(Icons.arrow_circle_up_outlined));
    await tester.pump();

    expect(find.text('This word not yet available. '), findsOneWidget);
    expect(
      tester.widget<TextField>(find.byType(TextField)).controller!.text,
      'hello',
    );
    expect(find.text('H'), findsNothing);
  });

  testWidgets('rejects guesses without five English letters', (tester) async {
    await tester.pumpWidget(const MainApp());

    await tester.enterText(find.byType(TextField), 'abc');
    await tester.tap(find.byIcon(Icons.arrow_circle_up_outlined));
    await tester.pump();

    expect(find.text('Insert word with 5 symbols.'), findsOneWidget);
    expect(
      tester.widget<TextField>(find.byType(TextField)).controller!.text,
      'abc',
    );
    expect(find.text('A'), findsNothing);
  });
}
