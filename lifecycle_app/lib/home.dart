import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String _buttonState;
  late double _two;

  @override
  void initState() {
    super.initState();
    _buttonState = 'OFF';
    _two = 2.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Life Cycle'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _onClick();
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: const Text(
                '버튼을 누르세요',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('버튼상태 :'),
                const SizedBox(
                  width: 5,
                ),
                // Text(_buttonState),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                  width: 2,
                ),
                    Text(_buttonState),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }

// ----------- Function -------------

  _onClick() {
    print("onClick()이 호출됨");
    setState(() {
      if (_buttonState == 'OFF') {
        _buttonState = 'ON';
        
      } else {
        _buttonState = 'OFF';
      }
    });
    print(_buttonState);
  }
} // End 
