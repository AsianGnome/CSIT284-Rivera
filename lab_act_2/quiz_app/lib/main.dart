import 'package:flutter/material.dart';
 
 
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [const Color.fromARGB(255, 107, 23, 122), const Color.fromARGB(255, 107, 23, 122)]),
          ),
          child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children:[
              Image.asset(width:350, 'assets/logo.png'),
              SizedBox(height: 20),      
               Text ('Learn Flutter in fun way!', style: TextStyle(color: Colors.white),),
               TextButton(onPressed: () {},
                 child: Text (style: TextStyle(fontSize: 18, color: Colors.white ), "Start Quiz")
              ),
            ]
          ),
          ),
        ),
      ),
    ),
  );
}