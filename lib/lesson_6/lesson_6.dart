import 'package:flutter/material.dart';

class Lesson6App extends StatelessWidget {
  const Lesson6App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker - Lesson 6',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.light,
        ),
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: const Color(0xFFF7F5FA),
      ),
      home: const Scaffold(
        body: Center(
          child: Text(
            'Expense Tracker - Lesson 6',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}