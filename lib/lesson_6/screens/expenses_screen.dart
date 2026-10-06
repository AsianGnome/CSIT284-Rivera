import 'package:flutter/material.dart';
import '../models/expense.dart';
import '../widgets/expense_list.dart';
import '../widgets/expense_summary.dart';
import '../widgets/responsive_layout.dart';

class ExpensesScreen extends StatefulWidget {
  const ExpensesScreen({super.key});

  @override
  State<ExpensesScreen> createState() => _ExpensesScreenState();
}

class _ExpensesScreenState extends State<ExpensesScreen> {
  final List<Expense> _expenses = [
    Expense(
      title: 'Groceries',
      amount: 1250,
      date: DateTime.now(),
      category: 'Food',
    ),
    Expense(
      title: 'Transportation',
      amount: 450,
      date: DateTime.now(),
      category: 'Transport',
    ),
    Expense(
      title: 'School Supplies',
      amount: 850,
      date: DateTime.now(),
      category: 'Shopping',
    ),
    Expense(
      title: 'Electric Bill',
      amount: 600,
      date: DateTime.now(),
      category: 'Bills',
    ),
  ];

  double get _totalExpenses {
    return _expenses.fold(
      0,
      (sum, expense) => sum + expense.amount,
    );
  }

  void _removeExpense(Expense expense) {
    setState(() {
      _expenses.remove(expense);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${expense.title} deleted'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ResponsiveLayout(
            summary: ExpenseSummary(
              total: _totalExpenses,
            ),
            expenseList: ExpenseList(
              expenses: _expenses,
              onRemove: _removeExpense,
            ),
          ),
        ),
      ),
    );
  }
}