
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:json_mpvie_github_app/detail.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late List data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = [];
    getJSONData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Network JSON Test'),
      ),
      body: Center(
        child: data.isEmpty
            ? const Text('데이터가 없습니다.')
            : ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return cardBuild(context, index);
                },
              ),
      ),
    );
  }

  Widget cardBuild(BuildContext context, int index) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        color: index % 3 == 0 ? Colors.pink[100] : Colors.green[100],
        height: 120,
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailView(
                    image: data[index]["image"],
                    name: data[index]["title"],
                  ),
                ));
          },
          child: Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.network(
                      data[index]['image'],
                      width: 100,
                      height: 100,
                    ),
                    const Text('Code : ',
                style: TextStyle(
                  fontWeight:  FontWeight.bold,

                ),
                    ),
                    Text("    ${data[index]["title"]}"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // --- function ---
  Future<bool> getJSONData() async {
    var url = Uri.parse('https://zeushahn.github.io/Test/movies.json');
    var response = await http
        .get(url); // 데이터 가져왔는데 화면구성이 덜 됐으면 사라짐 그래서 대기시켜야함 await (data넘겨주는것을 대기)
    print(response.body);
    var dataConvertedJSON =
        json.decode(utf8.decode(response.bodyBytes)); // 한글처리
    List result = dataConvertedJSON['results'];
    setState(() {
      data.addAll(result);
    });
    return true;
  }
} // End