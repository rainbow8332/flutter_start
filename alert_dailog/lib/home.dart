import 'package:alert_dailog/screen1st.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert and push'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            // onTap : 누르면 뭘  할꺼야.
            _showDialog(context);
          },
          child: const Text(
            'Move the 2nd page',
          ),
        ),
      ),
    );
  }

  //funtion
  _showDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // user must tap the button!
      builder: (BuildContext ctx) {
        return AlertDialog(
          title: const Text("Page 이동"),
          content: const Text('아래의 버튼을 누르면 페이지 이동을 합니다.'),
          actions: [
            TextButton(
              // onPressed: () => Navigator.of(ctx).pop(),
              onPressed: () => Navigator.pushNamed(context, '/1st'),
              child: const Text('Page 이동'),
            ),
          ],
        );
      },
    );
  }
}//end
