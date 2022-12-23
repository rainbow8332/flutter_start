import 'package:flutter/material.dart';
import 'package:sqlite_app/database_handler.dart';
import 'package:sqlite_app/student.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late DatabaseHandler handler;

  @override
  void initState() {
    super.initState();
    handler = DatabaseHandler();
    handler.initializeDB().whenComplete(() async {
      await addStudents();
      setState(() {
        //
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SQLite for Students'),
      ),
      body: FutureBuilder(
        // FutureBuilder : 만들면서 실행 , listView 다음에 나옴 
        future: handler.queryStudents(),
        builder: (BuildContext context, AsyncSnapshot<List<Students>>snapshot){
          if(snapshot.hasData){
            return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            // Text("Code : ${snapshot.data![index].code}       "),
                            // Text("Name : ${snapshot.data![index].name}"),
                            // // ? 정의, ! 보는것 
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Code : ${snapshot.data![index].code}"),
                                Text("Name : ${snapshot.data![index].name}"),
                                Text("Dept : ${snapshot.data![index].dept}"),
                                Text("Phone : ${snapshot.data![index].phone}"),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                );
                
              },);

          }else{
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
        ),
    );
  }


  // ------- Function ------
  // Test용 임시 Data 생성하기 
  Future<int> addStudents()async{
    Students firstStudent = Students(code: '1111', name: '유비', dept: '컴퓨터공학과', phone: '1111');
    await handler.insertStudents(firstStudent);

    Students secondStudent = Students(code: '2222', name: '관우', dept: '심리학과', phone: '2222');
    await handler.insertStudents(secondStudent);

    Students thirdStudent = Students(code: '3333', name: '장비', dept: '시각디자인학과', phone: '3333');
    await handler.insertStudents(thirdStudent);

    return 0;
  }
  
}