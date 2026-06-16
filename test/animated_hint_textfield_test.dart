import 'package:animated_hint_textfield/animated_hint_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('shows static hint text before animated hint text',
      (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AnimatedTextField(
            staticHintText: 'Search for ',
            hintTexts: const ['Bengaluru', 'Mumbai', 'Chennai'],
          ),
        ),
      ),
    );

    expect(find.text('Search for '), findsOneWidget);
    expect(find.text('Bengaluru'), findsOneWidget);
  });

  testWidgets('shows static hint text after animated hint text',
      (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AnimatedTextField(
            staticHintText: ' nearby',
            staticHintTextPosition: StaticHintTextPosition.suffix,
            hintTexts: const ['Cafe', 'Hotel', 'Restaurant'],
          ),
        ),
      ),
    );

    expect(find.text('Cafe'), findsOneWidget);
    expect(find.text(' nearby'), findsOneWidget);
  });
}
