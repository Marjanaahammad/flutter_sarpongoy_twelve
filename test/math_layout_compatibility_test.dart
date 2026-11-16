import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_sarpongoy_twelve/core/flutter_math_fork/lib/flutter_math.dart';

void main() {
  testWidgets('quiz math renders and relayouts with a text baseline',
      (tester) async {
    for (final width in [600.0, 280.0]) {
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: SizedBox(
            width: width,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                const Text('Answer:'),
                Math.tex(r'\frac{1}{2} + \sqrt{4}'),
              ],
            ),
          ),
        ),
      ));
      await tester.pump();
      expect(tester.takeException(), isNull);
      final size = tester.getSize(find.byType(Math));
      expect(size.width, greaterThan(0));
      expect(size.height, greaterThan(0));
      expect(size.isFinite, isTrue);
    }
  });
}
