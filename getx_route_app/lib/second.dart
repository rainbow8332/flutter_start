import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var value = Get.arguments ?? "_";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('두번째 화면'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.back(result: "Good");

              },
              child: const Text('이전 화면'),
              
            ),
            Text('Multiful Argument #1 : ${value[0]}'),
            Text('Multiful Argument #2 : ${value[1]}'),
          ],
        ),
      ),
    );
  }
}
