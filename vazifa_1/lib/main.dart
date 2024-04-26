import 'package:flutter/material.dart';
import 'package:vazifa_3/screens/homework_screen.dart';

void main(List<String> args) {
  runApp(const CourseApp());
}

class CourseApp extends StatelessWidget {
  const CourseApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeWork(),
    );
  }
}

