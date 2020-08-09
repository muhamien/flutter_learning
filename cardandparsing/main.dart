import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Card & Parsing",
    home: HalSatu(),
  ));
}

class HalSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card & Parsing"),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            CardSaya(
              icon: Icons.home,
              teks: 'Home',
              warnaIcon: Colors.grey,
            ),
            CardSaya(
              icon: Icons.face,
              teks: 'Muka',
              warnaIcon: Colors.grey,
            ),
            CardSaya(
              icon: Icons.location_city,
              teks: 'Lokasi',
              warnaIcon: Colors.grey,
            ),
            CardSaya(
              icon: Icons.exit_to_app,
              teks: 'Logout',
              warnaIcon: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}

class CardSaya extends StatelessWidget {
  CardSaya({this.icon, this.teks, this.warnaIcon});

  final IconData icon;
  final String teks;
  final Color warnaIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: Card(
            child: Column(
          children: <Widget>[
            Icon(
              icon,
              size: 50.0,
              color: warnaIcon,
            ),
            Text(
              teks,
              style: TextStyle(fontSize: 20.0),
            )
          ],
        )));
  }
}
