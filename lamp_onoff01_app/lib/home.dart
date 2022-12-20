import 'package:flutter/material.dart';
import 'package:lamp_onoff01_app/model/text.dart';
import 'package:lamp_onoff01_app/update.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late String lamponoff;  // 전구 기본 이미지 off 
  late TextEditingController hometxtCont;  // 인풋텍스트 컨트롤러

  @override
  void initState() {
    super.initState();
    lamponoff = 'images/lamp_off.png';
    hometxtCont = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Main',
            ),
          ),
          actions: [
            IconButton(  
              onPressed: () {   //  1.아이콘 버튼을 누르면 
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const UpdateTxt(); // 2. 수정페이지로 가서 
                    },
                  ),
                ).then((value) {
                  setState(() {   // 3. 전구색을 바꿔주고 
                    lamponoff = InputText.lamp
                        ? 'images/lamp_on.png'
                        : 'images/lamp_off.png';
                    hometxtCont.text = InputText.txt; //4. 입력한 글씨를 인풋창에 넣어줘
                  });
                });
              },
              icon: const Icon(
                Icons.create,
              ),
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 300,
                child: TextField(
                  controller: hometxtCont,
                  readOnly: true,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Image.asset(
                lamponoff,
                width: 200,
              ),
            ],
          ),
        ),
      ),
    );
  }
}