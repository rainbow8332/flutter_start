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
      backgroundColor: const Color.fromARGB(255, 245, 146, 54),
      appBar: AppBar(
        title: const Text('영웅 Card'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 244, 79, 29),
      ),
      

      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          const CircleAvatar(
            backgroundImage: AssetImage('images/sejong.jpg'),
            radius: 50,
          ),
          const Divider(
            color: Colors.black,
          ),
          Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Text('성웅',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            SizedBox(
                              width: 110,
                            ),
                          ],
                        ),
                        const Text("이순신 장군",
                            style:
                                TextStyle(fontSize: 30, color: Colors.white)),
                        Row(
                          children: const [
                            Text('전적',
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                            SizedBox(
                              width: 110,
                            ),
                          ],
                        ),
                        const Text("62전 62승",
                            style: TextStyle(
                                fontSize: 30,
                                color: Color.fromARGB(255, 210, 13, 112))),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Column(
                children: const [
                  Icon(Icons.check_circle_outline),
                  Icon(Icons.check_circle_outline),
                  Icon(Icons.check_circle_outline),
                  Icon(Icons.check_circle_outline),
                  Icon(Icons.check_circle_outline),
                  Icon(Icons.check_circle_outline),
                ],
              ),
              Column(
                children: const [
                  Text('옥포해전'),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('사천포해전'),
                  ),
                  Text('당포해전'),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('한산도대첩'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text('부산포대첩'),
                  ),
                  Text('명량해전'),
                  Text('노량해전'),
                ],
              )
            ],
          ),
          const SizedBox(
                height: 20,
              ),
          const CircleAvatar(
            backgroundImage: AssetImage('images/turtle.gif'),
            radius: 50,
          ),
        ],
      ),
    );
  }
}
