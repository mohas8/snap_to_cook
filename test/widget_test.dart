import "package:flutter/material.dart";
import 'package:flutter_test/flutter_test.dart';
import 'package:flavorlens/main.dart'; 

void main() {
  testWidgets('App initializes and displays home screen', (WidgetTester tester) async {
    await tester.pumpWidget(FlavorLensApp());
    expect(find.text('FlavorLens Home'), findsOneWidget);
  });
}
