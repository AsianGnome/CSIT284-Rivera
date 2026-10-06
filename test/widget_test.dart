import 'package:flutter_test/flutter_test.dart';
import 'package:expense_tracker/main.dart';

void main() {
  testWidgets('Expense Tracker loads', (WidgetTester tester) async {
    await tester.pumpWidget(const ExpenseTracker());

    expect(find.text('Expense Tracker'), findsOneWidget);
  });
}