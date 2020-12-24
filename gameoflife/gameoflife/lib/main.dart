import 'package:flutter/material.dart';
import './table.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
// This widget is the root of your application.

class _MyAppState extends State<MyApp> {
  double _width = 100;
  double _height = 100;
  bool smol = true;

  void _updateState() {
    setState(() {
      if (smol) {
        _width = 250;
        _height = 250;
        smol = false;
      } else {
        smol = true;
        _width = 100;
        _height = 100;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                onPressed: _updateState,
                child: Text("Animate"),
              ),
              RaisedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TableExample()));
                  },
                  child: Text("Table")),
              AnimatedContainer(
                duration: Duration(milliseconds: 400),
                width: _width,
                height: _height,
                color: Colors.lightBlue[200],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
