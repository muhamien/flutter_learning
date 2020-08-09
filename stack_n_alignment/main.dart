import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stack & Align Widget'),
        ),
        body: Stack(
          children: <Widget>[
            Column(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black12,
                          ),
                        )
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.black12,
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            color: Colors.white,
                          ),
                        )
                      ],
                    )),
              ],
            ),
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      'Ini adalah text pada lapisan tengah',
                      style: TextStyle(fontSize: 45),
                    ),
                    Text(
                      'Ini adalah text pada lapisan tengah',
                      style: TextStyle(fontSize: 45),
                    ),
                    Text(
                      'Ini adalah text pada lapisan tengah',
                      style: TextStyle(fontSize: 45),
                    ),
                    Text(
                      'Ini adalah text pada lapisan tengah',
                      style: TextStyle(fontSize: 45),
                    ),
                    Text(
                      'Ini adalah text pada lapisan tengah',
                      style: TextStyle(fontSize: 45),
                    ),
                    Text(
                      'Ini adalah text pada lapisan tengah',
                      style: TextStyle(fontSize: 45),
                    ),
                    Text(
                      'Ini adalah text pada lapisan tengah',
                      style: TextStyle(fontSize: 45),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment(0.9, 0.9),
              child: RaisedButton(
                child: Text('My Button'),
                color: Colors.amber,
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
