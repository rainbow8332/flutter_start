import 'package:flutter/material.dart';
import 'package:pickerview_ex_app/views/detail_list.dart';

import '../model/message.dart';
import '../model/todo_list.dart';

class TableList extends StatefulWidget {
  const TableList({super.key});

  @override
  State<TableList> createState() => _TableListState();
}

class _TableListState extends State<TableList> {
  late List<TodoList> todoList; // 리스트뷰 데이터 변수 생성 , 리스트 타입 제네릭 

  @override
  void initState() {
    super.initState();
    todoList = [];

    // 리스트뷰 데이터 초기화, 생성자를 통해 model에 담김 
    todoList.add(TodoList(imagePath: 'images/cart.png', workList: '책 구매')); 
    todoList.add(TodoList(imagePath: 'images/clock.png', workList: '철수와 약속'));
    todoList
        .add(TodoList(imagePath: 'images/pencil.png', workList: '스터디 준비하기'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Main View')),
        actions: [
          IconButton(
            onPressed: () {   // 버튼을 누르면 insert 페이지로 가서 rebuildData 함수를 실행
              Navigator.pushNamed(
                context,
                '/insert',
              ).then((value) => rebuildData());
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
              onTap: () { // 리스트 뷰 한줄을 클릭하면 
                Message.workList = todoList[position].workList; // 위에서 초기화 한 데이터 값을 상세페이지 데이터에 저장
                Message.imagePath = todoList[position].imagePath;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailList(),
                  ),
                );
              },
              child: Card(
                color: position % 2 == 0 ? Colors.red[100] : Colors.yellow[100],
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        todoList[position].imagePath,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      todoList[position].workList,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  //Functions
  rebuildData() {
    if (Message.isnew == true) {
      setState(() {
        todoList.add(
            TodoList(imagePath: Message.imagePath, workList: Message.workList));
      });
      Message.isnew = false;
    }
  }
}