import 'dart:async';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List imageName;
  late int currentImage; // 현재 이미지

  @override
  void initState() {
    super.initState();
    imageName = [
      'flower_01.png',
      'flower_02.png',
      'flower_03.png',
      'flower_04.png',
      'flower_05.png',
      'flower_06.png',
    ];
    currentImage = 0;

    // Timer 설치 
    Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      changeImage();
     });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('3초 마다 이미지 무한반복'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(imageName[currentImage]),
                Image.asset(
                  'images/${imageName[currentImage]}',
                  width: 350,
                  height: 600,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  // --------- Functions -------------

  changeImage(){
    setState(() {
      currentImage++;
      if(currentImage >= imageName.length ){
          currentImage = 0;
      }
    });
  }
} // End
