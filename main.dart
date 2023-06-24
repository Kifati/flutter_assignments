import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Container(
          color: Colors.black,
          alignment: Alignment.center,
          child: Text("Hello World\nWelcome to flutter, Karan.",
          style: TextStyle(color: Color.fromARGB(255, 77, 216, 248),
          fontSize: 40,
          fontWeight: FontWeight.bold
        )
      )
        )
      )
    );
  }
}