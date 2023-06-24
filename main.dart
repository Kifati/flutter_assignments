import 'package:flutter/material.dart';
import 'package:practice1/screens/home_page.dart';
import 'package:practice1/screens/login_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      themeMode: ThemeMode .light,
      theme: ThemeData(primarySwatch: Colors.cyan),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}