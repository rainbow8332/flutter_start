import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late bool switchValue;
  late String _buttonState;
  late Color _color;

  @override
  void initState() {
    super.initState();
    switchValue = false;
    _buttonState = 'Home';
    _color = Colors.blue;
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
                  backgroundColor: _color,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10))),
              child: Text(_buttonState),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Switch(
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                      if(switchValue == false){
                         _buttonState = 'Home';
                          _color =  Colors.blue;
                      }else{
                        _buttonState = 'Flutter';
                        _color =  Colors.amber;
                      }
                    });
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

// ----------- Function -------------

  // _onClick() {
  //   print("onClick()이 호출됨");
  //   setState(() {
  //     if (_buttonState == 'Home' && _color == Colors.blue && switchValue == false) {
  //         _buttonState = 'Flutter';
  //         _color =  Colors.amber;
  //         switchValue = true;
  //     } else{
  //       _buttonState = 'Home';
  //       _color =  Colors.blue;
  //       switchValue = false;
  //     }
  //   });
  //   print(_buttonState);
  // }

    _onClick() {
    print("onClick()이 호출됨");
    setState(() {
      if (_buttonState == 'Home' && _color == Colors.blue && switchValue == false) {
          _buttonState = 'Flutter';
          _color =  Colors.amber;
          switchValue = true;
      } else{
        _buttonState = 'Home';
        _color =  Colors.blue;
        switchValue = false;
      }
    });
    print(_buttonState);
  }
} // End 
