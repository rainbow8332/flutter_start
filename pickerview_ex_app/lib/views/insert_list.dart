import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/message.dart';

class InsertList extends StatefulWidget {
  const InsertList({super.key});

  @override
  State<InsertList> createState() => _InsertListState();
}

class _InsertListState extends State<InsertList> {
  late TextEditingController textEditingController;  // 텍스트필드 컨트롤러 
  late int selectedItem; // 뷰 왼쪽 이미지 , 선택된 이미지 , 1개 
  late List selectedImage; // 뷰 오른쪽 이미지 , 선택할 이미지 , 3개 
  late bool emp; // 텍스트 필드 입력값 

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
    selectedItem = 0;
    selectedImage = [
      'images/cart.png',
      'images/clock.png',
      'images/pencil.png'
    ];
    emp = false;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Add View',
          ),
        ),
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    selectedImage[selectedItem],
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(
                    width: 200,
                    height: 200,

                    child: CupertinoPicker(   // ** 피커 **
                      backgroundColor: Colors.amber[100],
                      itemExtent: 50, //선택된 공간의 크기
                      scrollController: FixedExtentScrollController(
                        initialItem: 0,
                      ),
                      onSelectedItemChanged: (value) {
                        setState(() {
                          selectedItem = value; // 사용자가 선택한 값을 selectedItem 에 저장 
                        });
                      },
                      children: [ // 선택 가능한 이미지들 
                        SizedBox(
                          child: Image.asset(
                            'images/cart.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                        SizedBox(
                          child: Image.asset(
                            'images/clock.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                        SizedBox(
                          child: Image.asset(
                            'images/pencil.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ],
                    ),

                  ),
                ],
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: textEditingController,
                  onChanged: (value) {
                    setState(() {
                      if (textEditingController.text.trim().isNotEmpty) {
                        // 택스트 필드에 값이 입력되었으면 true, 미입력시 false
                        emp = true;
                      } else {
                        emp = false;
                      }
                    });
                  },
                  decoration: const InputDecoration(
                    labelText: '목록을 입력하세요',
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                onPressed: emp ? () => addList(context) : null,
                // 텍스트필드에 텍스트가 입력되었으면 addList 함수를 실행
                child: const Text(
                  '입력',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //Functions
  addList(BuildContext context) {
    Message.workList = textEditingController.text.trim();
    Message.imagePath = selectedImage[selectedItem];
    Message.isnew = true;
    // 입력한 값을 model 에 저장 
    Navigator.pop(context);  // 이전 페이지로 이동 , table_liat 
  }
}