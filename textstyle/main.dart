import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Style'),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Normal',
                  style: TextStyle(fontSize: 25, fontFamily: 'Mulish'),
                ),
                Text(
                  'throught',
                  style: TextStyle(
                      fontSize: 25,
                      fontFamily: 'Mulish',
                      color: Colors.red,
                      decoration: TextDecoration.lineThrough,
                      decorationColor: Colors.blue,
                      decorationThickness: 2,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  'Italic Overline Dashed',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontFamily: 'Mulish',
                      decoration: TextDecoration.overline,
                      decorationColor: Colors.yellow,
                      fontStyle: FontStyle.italic,
                      decorationThickness: 6,
                      decorationStyle: TextDecorationStyle.dashed),
                ),
                Text(
                  'Underline',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.cyan,
                      fontFamily: 'Mulish',
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.purple,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  'Underline dotted',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.yellow,
                      fontFamily: 'Mulish',
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.purple,
                      fontWeight: FontWeight.w700,
                      decorationThickness: 5,
                      decorationStyle: TextDecorationStyle.dotted),
                ),
                Text(
                  'Underline double',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.orange,
                      fontFamily: 'Mulish',
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.purple,
                      fontWeight: FontWeight.w700,
                      decorationStyle: TextDecorationStyle.double),
                ),
                Text(
                  'Underline Solid',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontFamily: 'Mulish',
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.purple,
                      fontWeight: FontWeight.w700,
                      decorationThickness: 5,
                      decorationStyle: TextDecorationStyle.solid),
                ),
                Text(
                  'Underline Wavy',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.red,
                      fontFamily: 'Mulish',
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.purple,
                      fontWeight: FontWeight.w700,
                      decorationThickness: 5,
                      decorationStyle: TextDecorationStyle.wavy),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
