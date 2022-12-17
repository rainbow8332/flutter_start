import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int count;
  late int count1;
  late bool switchValue;
  late String _buttonState;
  late Color _color;
  late double _sliderValue;
  late String resultText;


  @override
  void initState() {
    super.initState();
    count = 10;
    count1 = 40;
    switchValue = false;
    _buttonState = '남';
    _color = Colors.deepPurple;
    _sliderValue = 110.0;
    resultText = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI    CALCULATOR'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                '당신의 BMI를 측정해보세요!',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const Text(
                            'Age(in Year)',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              '$count',
                              style: const TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 30,
                                child: FloatingActionButton(
                                  onPressed: () {
                                    setState(
                                      () {
                                        count--;
                                      },
                                    );
                                  },
                                  backgroundColor: Colors.purple,
                                  child: const Icon(
                                    Icons.remove,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: 30,
                                child: FloatingActionButton(
                                  onPressed: () {
                                    setState(
                                      () {
                                        count++;
                                      },
                                    );
                                  },
                                  backgroundColor: Colors.purple,
                                  child: const Icon(
                                    Icons.add,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          const Text(
                            'Weight(kg)',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Text(
                              '$count1',
                              style: const TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 30,
                                child: FloatingActionButton(
                                  onPressed: () {
                                    setState(
                                      () {
                                        count1--;
                                      },
                                    );
                                  },
                                  backgroundColor: Colors.purple,
                                  child: const Icon(
                                    Icons.remove,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              SizedBox(
                                width: 30,
                                child: FloatingActionButton(
                                  onPressed: () {
                                    setState(
                                      () {
                                        count1++;
                                      },
                                    );
                                  },
                                  backgroundColor: Colors.purple,
                                  child: const Icon(
                                    Icons.add,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Card(
                elevation: 10,
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20, bottom: 10),
                      child: Text(
                        'Height',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 5),
                          child: Text(
                            '$_sliderValue',
                            style: const TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 40),
                          ),
                        ),
                        Column(
                          children: const [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Cm',
                              style: TextStyle(fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                    // Switch(value: switchValue, onChanged: (value) {})
                    Slider(
                      activeColor: Colors.yellow,
                      // thumbColor: Colors.black,
                      inactiveColor: Colors.grey,
                      value: _sliderValue,
                      min: 110,
                      max: 190,
                      divisions: 10,
                      onChanged: (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Card(
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, bottom: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 1),
                          child: Text(
                            'Gender',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.add_reaction_outlined,
                              color: Colors.deepPurpleAccent,
                              size: 35.0,
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            ElevatedButton(
                              onPressed: () {
                                _onClick();
                              },
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: _color),
                              child: Text(_buttonState),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'I`m',
                              style: TextStyle(fontSize: 40),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            const Text(
                              'Man',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Switch(
                              value: switchValue,
                              onChanged: (value) {
                                setState(() {
                                  switchValue = value;
                                  if (switchValue == false) {
                                    _buttonState = '남';
                                    _color = Colors.deepPurple;
                                  } else {
                                    _buttonState = '여';
                                    _color = Colors.red;
                                  }
                                });
                              },
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text(
                              'Woman',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 45,
              width: 100,
              child: ElevatedButton(
                  onPressed: () {
                    showAddResult(context);
                    Navigator.pushNamed(context, '/normal');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100))),
                  child: const Text(
                    '결과',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  )),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(resultText,
                      style: const TextStyle(
                        fontSize: 25,
                      ))
          ],
        )),
      ),
    );
  }

  // ---------------------- Function ------------------------

  _onClick() {
    print("onClick()이 호출됨");
    setState(() {
      if (_buttonState == '남' &&
          _color == Colors.deepPurple &&
          switchValue == false) {
        _buttonState = '여';
        _color = Colors.red;
        switchValue = true;
      } else {
        _buttonState = '남';
        _color = Colors.deepPurple;
        switchValue = false;
      }
    });
    print(_buttonState);
  }

    showAddResult(BuildContext context) {
    setState(() {
      resultText =
          '결과: ${count1/(_sliderValue * _sliderValue)}';
    });
  }
} // End
