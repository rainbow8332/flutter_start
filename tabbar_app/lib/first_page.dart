import 'package:flutter/material.dart';

class FirstPAge extends StatefulWidget {
  const FirstPAge({super.key});

  @override
  State<FirstPAge> createState() => _FirstPAgeState();
}

class _FirstPAgeState extends State<FirstPAge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),
      ),
      body: Center(
        child: Text("첫번째 페이지"),
      ),
    );
  }
}