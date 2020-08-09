import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "aplikasi saya",
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.green[800],
          leading: new Icon(Icons.menu),
          title: new Text('Aplikasi'),
          actions: <Widget>[new Icon(Icons.search)],
        ),
        body: new Container(
          child: new Column(
            children: <Widget>[
              new Icon(
                Icons.local_airport,
                size: 70.0,
                color: Colors.grey[600],
              ),
              new Row(
                children: <Widget>[
                  new Icon(
                    Icons.local_atm,
                    size: 70.0,
                    color: Colors.grey[600],
                  ),
                  new Icon(
                    Icons.local_atm,
                    size: 70.0,
                    color: Colors.grey[600],
                  ),
                  new Icon(
                    Icons.local_atm,
                    size: 70.0,
                    color: Colors.grey[600],
                  ),
                ],
              ),
              new Icon(
                Icons.local_cafe,
                size: 70.0,
                color: Colors.grey[600],
              ),
            ],
          ),

          // child: new Container(
          //   color: Colors.blue[900],
          //   width: 200.0,
          //   height: 100.0,
          //   child: new Center(
          //     // child: new Text(
          //     //   'Halo dunia',
          //     //   style: new TextStyle(
          //     //     color: Colors.white,
          //     //     fontFamily: 'serif',
          //     //     fontSize: 20.0,
          //     //     fontWeight: FontWeight.bold,
          //     //   ),
          //     // ),
          //     child: new Icon(
          //       Icons.favorite,
          //       color: Colors.white,
          //       size: 32.0,
          //     ),
          //   ),
          // ),
        ));
  }
}
