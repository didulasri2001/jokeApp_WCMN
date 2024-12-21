
import 'package:flutter_test/flutter_test.dart';
import 'package:joke_app/main.dart';

void main() {
  testWidgets('Jokes App Test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.text('Jokes App'), findsOneWidget);
  });
}