import 'package:flutter/material.dart';
import 'package:navigator_lamp_switch_app/model/lamp.dart';
import 'package:navigator_lamp_switch_app/update.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late bool lampon;  // 전구 켜짐(yellow)
  late bool lampred; // 빨간 전구 

  @override
  void initState() {
    super.initState();
    lampon = false;
    lampred = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Main',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {    // 1.아이콘 버튼을 누르면 
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const UpdateLamp();  // 2. 수정화면으로 가서
                  },
                ),
              ).then((value) {
                setState(() {   // 3. 수정화면에서 받아온 전구 값을 저장해줘
                  lampon = Lamp.ison;
                  lampred = Lamp.isred;
                });
              });
            },
            icon: const Icon(
              Icons.create,
            ),
          ),
        ],
      ),
      body: Center(
        child: Image.asset(
          lampon ? (lampred ? 'images/lamp_red.png' : 'images/lamp_on.png') : 'images/lamp_off.png',
          // lampon 이 false ? (lampred 가 false ?  빨간 전구 :  노란전구 ) : 전구 꺼짐 
          width: 200,
        ),
      ),
    );
  }
}