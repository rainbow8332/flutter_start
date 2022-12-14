import 'package:alert_dailog/home.dart';
import 'package:alert_dailog/screen1st.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const Home(),
      initialRoute: '/',
      routes: {
        '/' :(context) => const Home(),
        '/1st' :(context) => const Screen1st()
      },
    );
  }
}
