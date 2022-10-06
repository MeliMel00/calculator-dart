import 'package:flutter/material.dart';
import 'package:flutter_shake_animated/flutter_shake_animated.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
          body: Center(
              child: Container(
                  child: Row(children: [
        Card(
          child: (Image.network(
              'http://www.clker.com/cliparts/d/C/V/s/q/D/oktoberfest-beer-mug-hi.png',
              width: 50)),
        ),
        ShakeWidget(
          autoPlay: true,
          shakeConstant: ShakeHardConstant1(),
          enableWebMouseHover: true,
          child: Card(
            child: (Image.network(
                'http://www.clker.com/cliparts/d/C/V/s/q/D/oktoberfest-beer-mug-hi.png',
                width: 50)),
          ),
        )
      ])))),
    );
  }
}
