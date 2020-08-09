import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Media Query')),
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(
                children: generateContainer(),
              )
            : Row(
                children: generateContainer(),
              ),
      ),
    );
  }

  List<Widget> generateContainer() {
    return [
      Container(
        color: Colors.redAccent,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.teal,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.pinkAccent,
        width: 100,
        height: 100,
      ),
    ];
  }
}
