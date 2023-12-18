import 'package:flutter/material.dart';
import 'package:untitled4/screen1.dart';
import 'package:untitled4/screen2.dart';
import 'package:untitled4/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LAB 10',
      initialRoute: '/screen1',
      routes: {
        '/screen1': (context) => Screen1(),
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
      },
    );
  }
}
