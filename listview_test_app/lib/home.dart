import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List<int> todoList;

  @override
  void initState() {
    super.initState();
    todoList = [];

    for (int i = 1; i <= 100; i++) {
      todoList.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Main View'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 100,
              child: Card(
                color: index % 2 == 0 ? Colors.red : Colors.amberAccent,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        // child: Image.asset('images/pica_one.jpg'),
                        child: index % 3  == 0 ? Image.asset('images/pica_one.jpg') : index % 3 == 1 ? Image.asset('images/pica_two.jpg'):Image.asset('images/pica_three.jpg') ,
                      ),
                      const Text('-->'),
                      Text(
                        todoList[index].toString(),
                        style: const TextStyle(
                          fontSize: 20
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
