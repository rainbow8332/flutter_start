
import 'package:flutter/material.dart';

class Navigatorr extends StatelessWidget {
  const Navigatorr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigator_AppBar'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.email),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.email_outlined),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: const CircleAvatar(
                backgroundImage: AssetImage('images/pica_one.jpg'),
              ),
              accountName: const Text('Pikachu'),
              accountEmail: Row(
                children: const [
                  Text('Pikacu@naver.com'),
                  Padding(
                    padding: EdgeInsets.only(left: 130),
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                      ),
                  )
                ],
              ),
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
              ),
            ),
            ListTile(
              leading: const Icon(
                Icons.email,
                color: Colors.black,
              ),
              title: const Text('보낸 편지함'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(
                Icons.email_outlined,
                color: Colors.black,
              ),
              title: const Text('받은 편지함'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/1st');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              child: const Text('보낸 편지함'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/2nd');
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              child: const Text('받은 편지함'),
            ),
          ],
        ),
      ),
    );
  }
}
