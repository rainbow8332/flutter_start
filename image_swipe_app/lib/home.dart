import 'package:flutter/material.dart';
import 'package:simple_gesture_detector/simple_gesture_detector.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: const Text('Image Swiping'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SimpleGestureDetector(
          onHorizontalSwipe: _onHorizontalSwipe,
          onVerticalSwipe: _onHorizontalSwipe,
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
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // ------------ Function -------------

  _onHorizontalSwipe(SwipeDirection direction) {
    setState(() {
      if (direction == SwipeDirection.left) {
        // if(direction == SwipeDirection.right){
        currentImage += 1;
        if (currentImage >= imageName.length) {
          currentImage = 0;
        }
      } else if (direction == SwipeDirection.right) {
        currentImage += 1;
        if (currentImage >= imageName.length) {
          currentImage = 0;
        }
      } else if (direction == SwipeDirection.up) {
        currentImage += 1;
        if (currentImage >= imageName.length) {
          currentImage = 0;
        }
      } else if (direction == SwipeDirection.down) {
        currentImage += 1;
        if (currentImage >= imageName.length) {
          currentImage = 0;
        }
      }
    });
  }
} // End
