import 'package:flutter/material.dart';
import '../models/expense.dart';
import 'expense_item.dart';

class ExpenseList extends StatelessWidget {
  final List<Expense> expenses;
  final void Function(Expense expense) onRemove;

  const ExpenseList({
    super.key,
    required this.expenses,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: expenses.length,
      itemBuilder: (context, index) {
        final expense = expenses[index];

        return ExpenseItem(
          expense: expense,
          onRemove: () {
            onRemove(expense);
          },
        );
      },
    );
  }
}