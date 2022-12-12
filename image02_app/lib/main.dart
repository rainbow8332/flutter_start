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
        primarySwatch: Colors.blue,
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
        title: const Text("Image Fitting"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/turtle.gif',
              width: 50,
              height: 100,
              fit: BoxFit.contain,
              ),
              Image.asset(
                'images/turtle.gif',
              width: 50,
              height: 100,
              fit: BoxFit.fill,
              ),
              Image.asset(
                'images/turtle.gif',
              width: 50,
              height: 100,
              fit: BoxFit.cover,
              ),
              Image.asset(
                'images/turtle.gif',
              width: 50,
              height: 100,
              fit: BoxFit.contain,
              ),
              Image.asset(
                'images/turtle.gif',
              width: 50,
              height: 100,
              fit: BoxFit.contain,
              ),
              Image.asset(
                'images/turtle.gif',
              width: 50,
              height: 100,
              fit: BoxFit.contain,
              ),
              Image.asset(
                'images/turtle.gif',
              width: 50,
              height: 100,
              fit: BoxFit.contain,
              ),
              Image.asset(
                'images/turtle.gif',
              width: 50,
              height: 100,
              fit: BoxFit.contain,
              ),
              Image.asset(
                'images/turtle.gif',
              width: 50,
              height: 100,
              fit: BoxFit.contain,
              ),
              Image.asset(
                'images/turtle.gif',
              width: 50,
              height: 100,
              fit: BoxFit.contain,
              ),
              Image.asset(
                'images/turtle.gif',
              width: 50,
              height: 100,
              fit: BoxFit.contain,
              ),
              Image.asset(
                'images/turtle.gif',
              width: 50,
              height: 100,
              fit: BoxFit.contain,
              ),
              Image.asset(
                'images/turtle.gif',
              width: 50,
              height: 100,
              fit: BoxFit.contain,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
