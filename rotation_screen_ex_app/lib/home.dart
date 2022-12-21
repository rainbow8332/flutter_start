import 'package:flutter/material.dart';
import 'package:rotation_screen_ex_app/widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Rotation Screen',
          ),
        ),
      ),
      body: OrientationBuilder(builder: (context, orientation) {
        return Rotation(
          labeltxt: orientation == Orientation.portrait ? "Hello" : "Flutter",
          vsbl: orientation == Orientation.portrait ? false : true,
        );
      }),
    );
  }
}