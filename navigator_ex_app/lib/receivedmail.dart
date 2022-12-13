import 'package:flutter/material.dart';


class RecevedMail extends StatelessWidget {
  const RecevedMail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Received Mail'),
        backgroundColor: Colors.red,
      ),
        body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 10),
          child: Column(
            children: [
              Row(
                children: const [
                  Text('유비에게서 온 메일'),
                ],
              ),
              Row(
                children: const [
                  Text('관우에게서 온  메일'),
                ],
              ),
              Row(
                children: const [
                  Text('장비에게서 온  메일'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}