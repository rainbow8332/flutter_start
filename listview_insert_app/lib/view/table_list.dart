import 'package:flutter/material.dart';
import 'package:listview_insert_app/model/message.dart';
import 'package:listview_insert_app/model/todo_list.dart';
import 'package:listview_insert_app/view/detail_list.dart';

class TableList extends StatefulWidget {
  const TableList({super.key});

  @override
  State<TableList> createState() => _TableListState();
}

class _TableListState extends State<TableList> {
  late List<TodoList> todoList;

  @override
  void initState() {
    super.initState();

    todoList = [];

    todoList.add(TodoList(imagePath: 'images/cart.png', workList: '책 구매'));
    todoList.add(TodoList(imagePath: 'images/clock.png', workList: '철수와의 약속'));
    todoList
        .add(TodoList(imagePath: 'images/pencil.png', workList: '스터디 준비하기'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main view'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(
                context,
                '/insert',
              ).then(
                (value) => rebuildData(),
              );
            },
            icon: const Icon(
              Icons.add_outlined,
            ),
          ),
        ],
      ),
      body: Center(
        child: ListView.builder(
          itemCount: todoList.length,
          itemBuilder: (context, position) {
            return GestureDetector(
              onTap: () {
                Message.workList = todoList[position].workList;
                Message.imagePath = todoList[position].imagePath;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailList(),
                  ),
                );
              },
              child: Card(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(todoList[position].imagePath),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(todoList[position].workList)
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  // ------------------- Function -----------------------
  rebuildData() {
    if (Message.isnew == true) {
      setState(() {
        todoList.add(
            TodoList(imagePath: Message.imagePath, workList: Message.workList));
      });
    }
  }
} // End
