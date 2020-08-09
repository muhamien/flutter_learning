import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HalSatu(),
    title: 'Navigasi',
    routes: <String, WidgetBuilder>{
      '/HalSatu': (BuildContext context) => HalSatu(),
      '/HalDua': (BuildContext context) => HalDua(),
    },
  ));
}

class HalSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MUSIC'),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(
            Icons.music_note,
            size: 50.0,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/HalDua');
          },
        ),
      ),
    );
  }
}

class HalDua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SPEAKER'),
      ),
      body: Center(
        child: IconButton(
          icon: Icon(
            Icons.speaker,
            size: 50.0,
          ),
          onPressed: () {
            Navigator.pushNamed(context, '/HalSatu');
          },
        ),
      ),
    );
  }
}
