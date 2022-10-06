import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var userInput = '';
  var answer = '';

  List<String> images = [
    'C',
    'Suppr',
    '%',
    '÷',
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
          title: Text("Flutter GridView Demo"),
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
                    return Container(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          elevation: 0,
                          shadowColor: Colors.transparent,
                        ),
                        onPressed: () {
                          
                        },
                        child: Text(images[index]),
                      ),
                    );
                  } else {
                    return Container(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          onPrimary: Colors.black,
                          elevation: 0,
                          shadowColor: Colors.transparent,
                        ),
                        onPressed: () {},
                        child: Text(images[index]),
                      ),
                    );
                  }
                  return Container();
                },
              ))
        ]),
      ),
    );
  }
}
