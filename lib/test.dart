import 'package:flutter/material.dart';
import 'testbutton.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ); // MaterialApp
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var userInput = '';
  var answer = '';

  final List<String> listnumbers = [
    'C',
    'Suppr',
    '%',
    '/',
    '7',
    '8',
    '9',
    'x',
    '4',
    '5',
    '6',
    '-',
    '1',
    '2',
    '3',
    '+',
    'change',
    '0',
    '.',
    '='
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Calculator Melvin"),
          backgroundColor: Colors.red,
        ),
        body: Column(children: <Widget>[
          Expanded(
            child: Column(children: [
              Container(
                child: Text(
                  userInput,
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Container(
                child: Text(
                  answer,
                  style: TextStyle(fontSize: 30),
                ),
              )
            ]),
          ),
          Expanded(
              flex: 3,
              child: GridView.builder(
                itemCount: 20,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  if (index == 0) {
                    return MyButton(
                      buttontapped: () {
                        //Delete the UserInput and set the answer = 0
                        setState(() {
                          userInput = '';
                          answer = '0';
                        });
                      },
                      buttonText: listnumbers[index],
                      // color: Colors.blue[50],
                      textColor: Colors.orange,
                    );
                  } else if (index == 1) {
                    return MyButton(
                      buttontapped: () {
                        // Delete the last number
                        setState(() {
                          userInput =
                              userInput.substring(0, userInput.length - 1);
                        });
                      },
                      buttonText: listnumbers[index],
                      textColor: Colors.orange,
                    );
                  } else if (index == 2) {
                    return MyButton(
                      buttontapped: () {
                        setState(() {
                          userInput += listnumbers[index];
                        });
                      },
                      buttonText: listnumbers[index],
                      textColor: Colors.orange,
                    );
                  } else if (index == 3) {
                    return MyButton(
                      buttontapped: () {
                        setState(() {
                          setState(() {
                            userInput += listnumbers[index];
                          });
                        });
                      },
                      buttonText: listnumbers[index],
                      textColor: Colors.orange,
                    );
                  } else if (index == 16) {
                    return MyButton(
                      buttontapped: () {
                        setState(() {
                          userInput = '';
                        });
                      },
                      buttonText: listnumbers[index],
                      textColor: Colors.black,
                    );
                  } else if (index == 19) {
                    return MyButton(
                      buttontapped: () {
                        setState(() {
                          equalPressed();
                        });
                      },
                      buttonText: listnumbers[index],
                    );
                  } else {
                    return MyButton(
                      buttontapped: () {
                        setState(() {
                          userInput += listnumbers[index];
                        });
                      },
                      buttonText: listnumbers[index],
                      color: Colors.white,
                      textColor: Colors.black,
                    );
                  }
                  return Container();
                },
              ))
        ]),
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }

  void equalPressed() {
    String finaluserinput = userInput;
    finaluserinput = userInput.replaceAll('x', '*');
    final containsD = finaluserinput.contains(RegExp('/0'), 0);

    if (containsD) {
      answer = 'Can\‘t divide by 0';
    } else {
      Parser p = Parser();
      Expression exp = p.parse(finaluserinput);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      answer = eval.toString();
    } 
  }
}
