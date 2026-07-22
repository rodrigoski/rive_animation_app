// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures, find child widgets in the widget tree, read text, and verify that
// the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:rive_animation_app/screens/login_screen.dart';

void main() {
  testWidgets('Login screen renders email and password fields',
      (WidgetTester tester) async {
    // Build our login screen replacing Rive with a placeholder so the test
    // does not depend on the native Rive runtime.
    await tester.pumpWidget(
      const MaterialApp(
        home: LoginScreen(animationOverride: SizedBox()),
      ),
    );

    // Verify that the email and password fields are present.
    expect(find.text('Correo electrónico'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
  });
}
