import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'insert_student.dart';

class SelectAll extends StatefulWidget {
  const SelectAll({super.key});

  @override
  State<SelectAll> createState() => _SelectAllState();
}

class _SelectAllState extends State<SelectAll> {
  late List data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = [];
    getJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRUD for Student'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return InsertStudent();
                }),
              ).then((value) => getJsonData());
            },
            icon: const Icon(Icons.add_outlined),
          ),
        ],
      ),
      body: Center(
        child: data.isEmpty
            ? const Text('데이터가 없습니다')
            : ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Text('Code : '),
                            Text(data[index]['code'])
                          ],
                        ),
                        Row(
                          children: [
                            const Text('Code : '),
                            Text(data[index]['name'])
                          ],
                        ),
                        Row(
                          children: [
                            const Text('Code : '),
                            Text(data[index]['dept'])
                          ],
                        ),
                        Row(
                          children: [
                            const Text('Code : '),
                            Text(data[index]['phone'])
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
      ),
    );
  }

  Future<bool> getJsonData() async {
    var url =
        Uri.parse('http://192.168.10.45:8080/flutter/student_query_flutter.jsp');
    var respnse = await http.get(url);
    data.clear();
    var dataConvertedJson = json.decode(utf8.decode(respnse.bodyBytes));
    List result = dataConvertedJson["results"];

    setState(() {
      data.addAll(result);
    });
    print(respnse.body);

    return true;
  }
}
