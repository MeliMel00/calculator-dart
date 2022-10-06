// Stateless Widget:
// Stateless Widgets are static widgets.
// They do not depend on any data change or any behavior change.
// Stateless Widgets do not have a state, they will be rendered once and will not update themselves, but will only be updated when external data changes.
// For Example: Text, Icon, RaisedButton are Stateless Widgets.

// Stateful Widget:
// Stateful Widgets are dynamic widgets.
// They can be updated during runtime based on user action or data change.
// Stateful Widgets have an internal state and can re-render if the input data changes or if Widget’s state changes.
// For Example: Checkbox, Radio Button, Slider are Stateful Widgets

//What are the common widgets in Flutter and how to customize them?
// There are different types of widget common in flutter.
// First of all there is the Scaffold class which provides many widgets. Then there are the widgets that contain and place information such as Container, Padding, Sizedbox...
// Finally, there are widgets that will create/display information such as AssetImage, Text...
// We can create the custom widget in a new Dart file with all the code and set the parameters we need in the constructor.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        textTheme: TextTheme(
          bodyText1: TextStyle(),
          bodyText2: TextStyle(),
        ).apply(
          bodyColor: Colors.white,
        ),
      ),
      home: Scaffold(
          body: Center(
        child: Container(
          width: 400,
          height: 250,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            elevation: 5,
            margin: EdgeInsets.all(10),
            color: Colors.blue,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    width: 200,
                    child: ListTile(
                      title: Text('TESCO',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            decoration: TextDecoration.underline,
                            decorationStyle: TextDecorationStyle.dashed,
                          )),
                      subtitle: Text('Clubcard',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 200,
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Tap to scan',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            ),
                            Text(
                              'Collect ClubCard points',
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            new Container(
                              padding: EdgeInsets.all(0),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.white,
                              ),
                              child: IconButton(
                                color: Colors.blue,
                                icon: Icon(Icons.arrow_forward_ios),
                                onPressed: () => {},
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Welcome to Flutter',
//       home: Scaffold(
//           body: Center(
//         child: new ListView(
//           children: <Widget>[
//             new Container(
//               height: 80.0,
//               child: new ListView(
//                 scrollDirection: Axis.horizontal,
//                 children: new List.generate(20, (int index) {
//                   return new Card(
//                     color: Colors.blue[index * 100],
//                     child: new Container(
//                       width: 50.0,
//                       height: 50.0,
//                       child: new Text("$index"),
//                     ),
//                   );
//                 }),
//               ),
//             ),
//             new Container(
//               height: 200.0,
//               child: new ListView(
//                 scrollDirection: Axis.vertical,
//                 children: new List.generate(20, (int index) {
//                   return new Card(
//                     color: Colors.green[index * 100],
//                     child: new Container(
//                       width: 50.0,
//                       height: 50.0,
//                       child: new Text("$index"),
//                     ),
//                   );
//                 }),
//               ),
//             ),
//           ],
//         ),
//       )),
//     );
//   }
// }
