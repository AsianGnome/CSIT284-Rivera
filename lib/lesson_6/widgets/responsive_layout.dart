import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget summary;
  final Widget expenseList;

  const ResponsiveLayout({
    super.key,
    required this.summary,
    required this.expenseList,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isWide = constraints.maxWidth >= 700;

        if (isWide) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 300,
                child: summary,
              ),
              const SizedBox(width: 24),
              Expanded(
                child: expenseList,
              ),
            ],
          );
        }

        return Column(
          children: [
            summary,
            const SizedBox(height: 16),
            Expanded(
              child: expenseList,
            ),
          ],
        );
      },
    );
  }
}