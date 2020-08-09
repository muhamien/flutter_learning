import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Image Widget')),
        body: Center(
          child: Container(
            color: Colors.black12,
            width: 300,
            height: 300,
            padding: EdgeInsets.all(3),
            child: Image(
              image: NetworkImage(
                  'https://i.pinimg.com/originals/d6/3c/27/d63c27d817751c31ff1461e39528a76c.jpg'),
              // image: AssetImage('assets/images/IMG_20190809_072501_234.jpg'),
              fit: BoxFit.cover,
              repeat: ImageRepeat.noRepeat,
            ),
          ),
        ),
      ),
    );
  }
}
