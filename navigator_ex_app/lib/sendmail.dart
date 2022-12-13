import 'package:flutter/material.dart';

class SendMail extends StatelessWidget {
  const SendMail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Send Mail'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 10),
          child: Column(
            children: [
              Row(
                children: const [
                  Text('유비에게 보낸 메일'),
                ],
              ),
              Row(
                children: const [
                  Text('관우에게 보낸 메일'),
                ],
              ),
              Row(
                children: const [
                  Text('장비에게 보낸 메일'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
