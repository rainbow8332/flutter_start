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
      backgroundColor: const Color.fromARGB(255, 240, 100, 7),
      appBar: AppBar(
        title: const Text('Image Ex01'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     const CircleAvatar(
            //       backgroundImage: AssetImage('images/pica_one.jpg'),
            //     radius: 50,
            //     ),
            //     Column(
            //       children: const [
            //         CircleAvatar(
            //       backgroundImage: AssetImage('images/pica_two.jpg'),
            //     radius: 50,
            //     ),
            //     CircleAvatar(
            //       backgroundImage: AssetImage('images/pica_tree.jpg'),
            //     radius: 50,
            //     ),
            //       ],
            //     )
            //   ],
            // )
            Column(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('images/pica_one.jpg'),
                radius: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                  backgroundImage: AssetImage('images/pica_two.jpg'),
                radius: 50,
                ),
                    ),Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                  backgroundImage: AssetImage('images/pica_three.jpg'),
                radius: 50,
                ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

