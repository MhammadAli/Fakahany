// Basic widget test for Fakahany app
//
// This test verifies that the app launches without errors.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:fakahany/main.dart';

void main() {
  testWidgets('App launches without errors', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const FruitHub());

    // Verify that the app starts with splash screen or initial route
    // This is a basic smoke test to ensure the app doesn't crash on startup
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
