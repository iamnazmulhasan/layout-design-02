import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:layout_design_02/main.dart';

void main() {
  testWidgets('Secondary Numbers UI smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify header text
    expect(find.text('Secondary Numbers'), findsOneWidget);

    // Verify phone numbers
    expect(find.text('+1 (555) 987-6543'), findsOneWidget);
    expect(find.text('+44 20 7123 4567'), findsOneWidget);

    // Verify subtitles
    expect(find.text('Home • Added 2mo ago'), findsOneWidget);
    expect(find.text('Work • Unverified'), findsOneWidget);

    // Verify Icons
    expect(find.byIcon(Icons.phone), findsNWidgets(2));
    expect(find.byIcon(Icons.edit), findsNWidgets(2));
    expect(find.byIcon(Icons.delete), findsNWidgets(2));
  });
}
