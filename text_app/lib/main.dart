import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold : 디자인 요소
    return Scaffold(
      appBar: AppBar(
        // const : 자바의 final과 같음, 변하지 않음을 알려주는 키워드
        title: const Text("대한민국"),
        // text 가운데 정렬(윈도우)
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          // 컬럼 가운데 정렬 
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('유비'),
            // 간격주기 
            SizedBox(
              height: 50,
            ),
            Text('관우'),
            Text('장비')
          ],
        ),
      ),
    );
  }
}

