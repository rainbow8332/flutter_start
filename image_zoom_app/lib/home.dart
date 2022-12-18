import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String _lampImage; // Image Name
  late double _lampWidth; // Image Width
  late double _lampHeight; // Image Height
  late String _buttonName; // Button Title
  late bool _switch; // Switch 상태
  late String _lampSizeStatus; // 현재 화면의 Lamp 크기

  @override
  void initState() {
    super.initState();
    _lampImage = 'images/lamp_on.png';
    _lampWidth = 150;
    _lampHeight = 300;
    _buttonName = 'Image 확대';
    _switch = true;
    _lampSizeStatus = 'small';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Image 확대 및 축소'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 350,
              height: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset(
                  //   _lampImage,
                  //   width: _lampWidth,
                  //   height: _lampHeight,
                  // ),
                  RotationTransition(
                    turns: const AlwaysStoppedAnimation(-45 / 360),
                    child: Image.asset(
                      _lampImage,
                      width: _lampWidth,
                      height: _lampHeight,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    decisionLampSize();
                  },
                  child: Text(
                    _buttonName,
                  ),
                ),
                Column(
                  children: [
                    Text(
                      '전구 스위치',
                      style: TextStyle(fontSize: 12),
                    ),
                    CupertinoSwitch(
                      value: _switch, 
                      onChanged: (value) {
                            setState(() {
                          _switch = value;
                        });
                        decisionOnOff();
                      },)
                    // Switch(
                    //   value: _switch,
                    //   onChanged: (value) {
                    //     setState(() {
                      
                    //       _switch = value;
                    //     });
                    //     decisionOnOff();
                    //   },
                    // ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

// ---------------- Function -------------------

  decisionLampSize() {
    if (_lampSizeStatus == 'small') {
      setState(() {
        _lampWidth = 300;
        _lampHeight = 600;
        _buttonName = 'Image 축소';
        _lampSizeStatus = 'large';
      });
    } else {
      setState(() {
        _lampWidth = 150;
        _lampHeight = 300;
        _buttonName = 'Image 확대';
        _lampSizeStatus = 'small';
      });
    }
  }

  decisionOnOff() {
    if (_switch == true) {
      setState(() {
        _lampImage = 'images/lamp_on.png';
      });
    } else {
      _lampImage = 'images/lamp_off.png';
    }
  }
} // End 
