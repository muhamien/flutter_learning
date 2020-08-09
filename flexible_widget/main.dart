import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flexible Layout')),
        body: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.red,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.amber,
                        margin: EdgeInsets.all(4),
                        child: Container(
                          height: 200,
                          width: 200,
                          child: Image(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://i.pinimg.com/564x/9c/b4/66/9cb466e6bb47a97cda1bf36e73b60ebd.jpg')),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.amber,
                        margin: EdgeInsets.all(4),
                        child: Container(
                          height: 200,
                          width: 200,
                          child: Image(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://i.pinimg.com/originals/d6/3c/27/d63c27d817751c31ff1461e39528a76c.jpg')),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        color: Colors.amber,
                        margin: EdgeInsets.all(4),
                        child: Container(
                          height: 200,
                          width: 200,
                          child: Image(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  'https://instagram.fjog3-1.fna.fbcdn.net/v/t51.2885-15/e35/p1080x1080/66713210_480880586037868_5047613609820393816_n.jpg?_nc_ht=instagram.fjog3-1.fna.fbcdn.net&_nc_cat=104&_nc_ohc=395bweQU3cUAX8lmd_h&oh=93406a89d3532669e8ea98460a4e2994&oe=5F4AE6C8')),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.yellow,
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
