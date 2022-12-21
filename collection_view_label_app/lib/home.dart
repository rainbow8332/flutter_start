import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<String> heroLsit = [];

  @override
  void initState() {
    super.initState();
    heroLsit.add('유비');
    heroLsit.add('관우');
    heroLsit.add('장비');
    heroLsit.add('조조');
    heroLsit.add('여포');
    heroLsit.add('초선');
    heroLsit.add('손견');
    heroLsit.add('장양');
    heroLsit.add('손책');
    heroLsit.add('유비');
    heroLsit.add('관우');
    heroLsit.add('장비');
    heroLsit.add('조조');
    heroLsit.add('여포');
    heroLsit.add('초선');
    heroLsit.add('손견');
    heroLsit.add('장양');
    heroLsit.add('손책');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('삼국지 인물'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/insert');
            },
            icon: const Icon(Icons.add_outlined),
          )
        ],
      ),
      body: GridView.builder(
        itemCount: heroLsit.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.grey,
              child: Card(
                color: Colors.yellow,
                child: Center(
                  child: Text(
                    heroLsit[index],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }


  
}
