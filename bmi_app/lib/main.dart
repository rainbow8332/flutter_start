import 'package:bmi_app/home.dart';
import 'package:bmi_app/normal.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const Home(),
      initialRoute: '/',
      routes: {
        '/' :(context) => const Home(),  
        '/normal' :(context) =>  const Normal(),  
      },
    );
  }
}


