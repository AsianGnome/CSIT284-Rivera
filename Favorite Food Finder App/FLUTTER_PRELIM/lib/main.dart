import 'package:flutter/material.dart';
 
 
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [const Color.fromARGB(255, 255, 255, 255), const Color.fromARGB(255, 255, 255, 255)]),
          ),
          child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children:[
              Image.asset(width:350, 'assets/images/main-logo.jfif'),
              SizedBox(height: 20),      
               Text ('Favorite Food Finder', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),),
               Text ('Answer three questions and discover a food that matches your preferences.', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),),
               TextButton(onPressed: () {},
                 child: Text (style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 0, 0, 0) ), "Start!")
              ),
            ]
          ),
          ),
        ),
      ),
    ),
  );
}