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
        primarySwatch: Colors.green,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Exercise 01'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              const Divider(
                  height: 30,
                  color: Colors.black,
                  thickness: 0.5,
                 ), 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: const[
                //   Divider(
                //   height: 30,
                //   color: Colors.grey,
                //   thickness: 0.5,
                //  ), 
                 Text('유비'),
                 SizedBox(
                  width: 20,
                 ),
                 Text('관우'),
                 SizedBox(
                  width: 20,
                 ),
                 Text('장비'),
                 Divider(
                  height: 30,
                  color: Colors.grey,
                  thickness: 0.5,
                 ),
                 
                // ignore: prefer_const_constructors
                // SizedBox(
                //   height: 30,
                // ),
                 /* Text(
                  '조조',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 5,
                    ),
                 ),
                 Text('여포'),
                 Text('동탁'),
                 Divider(
                  height: 30,
                  color: Colors.grey,
                  thickness: 0.5,
                 ), */
              ],
            ),
            const Divider(
                  height: 30,
                  color: Colors.black,
                  thickness: 0.5,
                 ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: const[
                Divider(
                height: 30,
                color: Colors.grey,
                thickness: 0.5,
                 ), 
                 Text('유비'),
                 SizedBox(
                  width: 20,
                 ),
                 Text('관우'),
                 SizedBox(
                  width: 20,
                 ),
                 Text('장비'),
                 Divider(
                  height: 30,
                  color: Colors.grey,
                  thickness: 0.5,
                 ),
              ],
            ),
            const Divider(
                  height: 30,
                  color: Colors.black,
                  thickness: 0.5,
                 ),
          ],
        ),
      ),
    );
  }
}

