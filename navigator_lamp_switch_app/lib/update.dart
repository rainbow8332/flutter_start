import 'package:flutter/material.dart';
import 'package:navigator_lamp_switch_app/model/lamp.dart';

class UpdateLamp extends StatefulWidget {
  const UpdateLamp({super.key});

  @override
  State<UpdateLamp> createState() => _UpdateLampState();
}

class _UpdateLampState extends State<UpdateLamp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Main',
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text( // 레드 스위치
                  'Red',
                ),
                Switch(
                  value: Lamp.isred, // 사용자가 선택한 스위치 값 
                  onChanged: (value) {
                    setState(() {
                      Lamp.isred = value; // 선택된 스위치 값을 model에 담음 
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(  // onoff 스위치 
                  'On',
                ),
                Switch(
                  value: Lamp.ison,  // 사용자가 선택한 스위치 값 
                  onChanged: (value) {
                    setState(() {
                      Lamp.ison = value;   // 선택된 스위치 값을 model에 담아줌 
                    });
                  },
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {  // ok버튼을 누르면 이전화면(home) 으로 이동 
                Navigator.pop(context);
              },
              child: const Text(
                'OK',
              ),
            ),
          ],
        ),
      ),
    );
  }
}