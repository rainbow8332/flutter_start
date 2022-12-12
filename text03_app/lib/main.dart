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
        title: const Text('Text with Column and Row'),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         // ignore: prefer_const_literals_to_create_immutables
      //         children: [
      //           const Icon(Icons.email_rounded),
      //           // ignore: prefer_const_constructors
      //           SizedBox(
      //             width: 10,
      //           ),
      //           const Text(
      //             "James",
      //           )
      //         ],
      //       ),
      //       const SizedBox(
      //         height: 20,
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         // ignore: prefer_const_literals_to_create_immutables
      //         children: [
      //           const Icon(Icons.account_balance),
      //           // ignore: prefer_const_constructors
      //           SizedBox(
      //             width: 10,
      //           ),
      //           const Text(
      //             "Cathy",
      //           )
      //         ],
      //       ),
      //       const SizedBox(
      //         height: 20,
      //       ),
      //       Row(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         // ignore: prefer_const_literals_to_create_immutables
      //         children: [
      //           const Icon(Icons.account_circle),
      //           // ignore: prefer_const_constructors
      //           SizedBox(
      //             width: 10,
      //           ),
      //           const Text(
      //             "Kenny",
      //           )
      //         ],
      //       ),
      //     ],
      //   )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.email_rounded),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.account_balance),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.account_circle),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text('James'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text('Cathy'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Text('Kenny'),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
