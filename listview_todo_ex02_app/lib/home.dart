import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:listview_todo_ex02_app/addList.dart';
import 'package:listview_todo_ex02_app/list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Listview Test',
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          AnimalList(),
          AddList(),
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.blue[100],
        height: 60,
        child: TabBar(
          labelColor: Colors.blue[600],
          indicatorColor: Colors.blue[600],
          controller: controller,
          tabs: const [
            Tab(
              icon: Icon(
                Icons.list,
              ),
              text: 'List',
            ),
            Tab(
              icon: Icon(
                Icons.add,
              ),
              text: 'Add',
            ),
          ],
        ),
      ),
    );
  }
}