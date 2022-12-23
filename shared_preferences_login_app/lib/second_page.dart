// 로그인해서 저장된 화면 불러오기 위해 만듬


import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  // 그냥 해도 되지만 혹시 몰라 변수 만드릭
  late String userId;
  late String password;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userId = "";
    password = "";
    _initSharedPreferences();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ID와 Password 출력'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('User ID : $userId'),
            Text('Password : $password'),
          ],
        ),
      ),
    );
  }

  // — Functions
  _initSharedPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      userId = (prefs.getString('p_userid'))!;
      password = (prefs.getString('p_password'))!;
    });
  }
}
// 쉐어드 할 때 스태틱 안하고 인스턴스 계속 만들어서 사용