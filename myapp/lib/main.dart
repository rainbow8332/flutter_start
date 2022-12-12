// 1.머터리얼 라이브러리 가져오기 (필수)
//*i *fm
import 'package:flutter/material.dart';

// 2.main() : 앱의 시작점 
// 3.runApp() : 최상위 함수, 한번만 호출하면 됨 
// 4.Myapp() 불러오기 
 void main() => runApp(MyApp());

// 5.*stl  StatelessWidget으로 MyApp 커스텀 위젯 생성 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 6.반환 위젯을 MaterialApp 위젯으로 
    return MaterialApp(
      // 7.title 지정 
      title: 'First app',
      // 8.ThemeData() 위젯 불러오기 
      theme: ThemeData(
        // 9.primarySwatch 아규먼트 불러오기 
        // 10.blue 음영으로 지정 
        primarySwatch: Colors.blue
      ),
      // 11.home 에서 MyHomePage 위젯으로 커스텀 위젯 지점 
      home: Scaffold(
        appBar: AppBar(
        title: Text('First app'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('Hello'),
            Text('Hello'),
            Text('Hello')
          ],
        ),
      ),
      ),
    );
  }
}


  

