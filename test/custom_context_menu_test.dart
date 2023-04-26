import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:custom_context_menu/custom_context_menu.dart';

void main() {
  testWidgets('CustomContextMenu test', (WidgetTester tester) async {
    final widget = CustomContextMenu(
      editableTextState: EditableTextState(),
      backgroundColor: Colors.red,
      disabledColor: Colors.grey,
      borderRadius: 8.0,
      buttonPadding: 16.0,
    );

    await tester.pumpWidget(widget);
    expect(find.byType(AdaptiveTextSelectionToolbar), findsOneWidget);
  });
}
