import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_login_app/second_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

// 상속 받기
class _LoginState extends State<Login> with WidgetsBindingObserver{  // ***
                                        // WidgetsBindingObserver : 감시자,서포터
  // 이거 꼭 알기
  // 옵저버 숨어서 감시하고 있음 떠있는 페이지 사용자가 뭐하는지 알 수 있음 메모리에 상주시켜야 함 메모리 상주해 있음
  // 스태틱이랑 똑같지만 보안이 좋다
  // 옵저버 앱 감시하는 아이 한국은 감시자 미국은 서포터
  // 탭바도 화면에 떠있는거라 뭐하는지 암

  late AppLifecycleState _lastLifecycleState;
  late TextEditingController userIdController;
  late TextEditingController passwordController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // ***
    WidgetsBinding.instance.addObserver(this);
    userIdController = TextEditingController();
    passwordController = TextEditingController();
    // 이니스테이트로 만들고
    // 빌드되기 전 메모리에 올라와 있어야 하므로 프로프레싱? 해야 함
    // 두가지 해야 돼서 얘도 어싱크임
    _initSharedPreferences(); // SharedPreference 초기화 (함수 이름 적어야 나중에 보기 쉬움)
  }
  // 쉐어드라 모든 변수 감시 가능 그래서 회사는 변수명 특이하게 함 변수로 해킹하니까
  
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch(state){
      case AppLifecycleState.detached:
      print('detached');
      break;
      case AppLifecycleState.resumed:
      print('resume');
      break;
      case AppLifecycleState.inactive:
      print('inactive');
      break;
      case AppLifecycleState.paused:
      _disposeSharedPreferences();
      print('paused');
      break;
    }
    _lastLifecycleState = state;
    super.didChangeAppLifecycleState(state);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log In'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: userIdController, //텍스트필드는 그림만 그리고 컨트롤러가 정보 가지고 있음
              decoration: const InputDecoration(hintText: '사용자 ID'),
            ),
            TextField(
              controller: passwordController, //텍스트필드는 그림만 그리고 컨트롤러가 정보 가지고 있음
              decoration: const InputDecoration(hintText: 'Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                _showDialog(context);
              }, 
              child: const Text('Log In'))
              // 트리밍? 스트림이 제일 중요
          ],
        ),
      ),
    );
  }

  // --- Functions
  _initSharedPreferences() async{
    final prefs = await SharedPreferences.getInstance(); // 변수명 만들기 나 이거 쓸거야
    setState(() {  // 한 번 등록된 거 다음에 우리 앱 쓰면 보여준다
      userIdController.text = (prefs.getString('p_userid') ?? "");
      passwordController.text = (prefs.getString('p_password') ?? "");
    });

    print(userIdController.text);
    print(passwordController.text);
  }

  _showDialog(BuildContext context) {
    showDialog(
      context: context, 
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('환영 합니다'),
          content: const Text('신분이 확인 되었습니다.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // 화면 뜬 거 지워주고
                _saveSharedPrefereces(); // 저장하기
                Navigator.push(  // 나가기
                  context, 
                  MaterialPageRoute(builder: (context){
                    return const SecondPage();
                  }));
              }, 
              child: const Text('OK'))
          ],
        );
      });

  }

  _saveSharedPrefereces()async{
    final pref = await SharedPreferences.getInstance();
    pref.setString('p_userid', userIdController.text);
    pref.setString('p_password', passwordController.text);
  }


  _disposeSharedPreferences()async{
    final pref = await SharedPreferences.getInstance();
    pref.clear();

  }

}// End