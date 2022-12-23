import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class InsertStudent extends StatefulWidget {
  const 
  InsertStudent({super.key});

  @override
  State<InsertStudent> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<InsertStudent> {
  late TextEditingController codeController;
  late TextEditingController nameController;
  late TextEditingController deptController;
  late TextEditingController phoneController;

  late String code;
  late String name;
  late String dept;
  late String phone;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    codeController = TextEditingController();
    nameController = TextEditingController();
    deptController = TextEditingController();
    phoneController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Insert Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              TextField(
                controller: codeController,
                decoration: const InputDecoration(
                  hintText: '코드 입력.',
                ),
              ),
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  hintText: '이름 입력.',
                ),
              ),
              TextField(
                controller: deptController,
                decoration: const InputDecoration(
                  hintText: '과목 입력.',
                ),
              ),
              TextField(
                controller: phoneController,
                decoration: const InputDecoration(
                  hintText: '전화번호 입력.',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  code = codeController.text;
                  name = nameController.text;
                  dept = deptController.text;
                  phone = phoneController.text;
                  getJSONDate();
                },
                child: const Text('입력'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  getJSONDate() async {
    var url = Uri.parse(
        'http://192.168.10.45:8080/flutter/student_insert_flutter.jsp?code=$code&name=$name&dept=$dept&phone=$phone');

    await http.get(url);

    _showDialog(context);
  }

  _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('data'),
          content: const Text('입력이 완료 되었습니다.'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.pop(context);
                },
                child: const Text('Ok')),
          ],
        );
      },
    );
  }
}

