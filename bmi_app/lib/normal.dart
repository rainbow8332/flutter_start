import 'package:flutter/material.dart';

class Normal extends StatefulWidget {
  const Normal({super.key});

  @override
  State<Normal> createState() => _NormalState();
}

class _NormalState extends State<Normal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('정상체중 페이지'),
      ),
    );
  }
}