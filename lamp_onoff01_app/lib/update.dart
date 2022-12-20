import 'package:flutter/material.dart';
import 'package:lamp_onoff01_app/model/text.dart';

class UpdateTxt extends StatefulWidget {
  const UpdateTxt({super.key});

  @override
  State<UpdateTxt> createState() => _UpdateTxtState();
}

class _UpdateTxtState extends State<UpdateTxt> {
  late TextEditingController txtCont;  // 인풋 컨트롤러
  late bool switchvalue;  // 스위치 값 
  late bool enb; // 텍스트 값, null 체크 

  @override
  void initState() {
    super.initState();
    txtCont = TextEditingController(); 
    switchvalue = InputText.lamp;
    txtCont.text = InputText.txt;
    enb = txtCont.text.isNotEmpty;
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
              '수정화면',
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: TextField(
                  onChanged: (value) {
                    setState(() {
                      if (value.isNotEmpty) {
                        enb = true;
                      } else {
                        enb = false;
                      }
                    });
                  },
                  controller: txtCont,
                  decoration: const InputDecoration(
                    labelText: '입력할 문구',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'On',
                  ),
                  Switch(
                    value: switchvalue,
                    onChanged: (value) {
                      setState(() {
                        switchvalue = value;
                      });
                    },
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: enb ? () => applybutton() : null,
                child: const Text('OK'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  applybutton() {
    Navigator.pop(context);
    setState(() {  // 수정페이지에서 입력한 값을 model에 저장 
      InputText.txt = txtCont.text;
      InputText.lamp = switchvalue;
      InputText.isnew = true;
    });
  }
}