import 'package:flutter/material.dart';
import 'package:flutter_slidable_menu/flutter_slidable_menu.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Test slide menu drawer widget', (WidgetTester tester) async {
    // Build our widget and trigger a frame.
    await tester.pumpWidget(
      MaterialApp(
        home: SlideMenuDrawer(
          drawer: Container(
            color: Colors.blue,
          ),
          body: Container(
            color: Colors.green,
          ),
          toggleDrawer: true,
        ),
      ),
    );

    // Verify that our drawer starts closed
    expect(find.byType(SlideMenuDrawer), findsOneWidget);
    expect(find.byType(Stack), findsOneWidget);
    expect(
        find.byType(AnimatedPositioned),
        findsNWidgets(
            2)); // Verify the presence of two AnimatedPositioned widgets

    // You can continue writing test cases to simulate user interactions and verify the behavior of your widget
  });
}
