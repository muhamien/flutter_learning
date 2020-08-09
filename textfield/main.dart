import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Latihan Textfield'),
        ),
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.account_circle),
                        prefixIcon: Icon(
                          Icons.account_box,
                          color: Colors.grey[400],
                        ),
                        prefixText: 'Name :',
                        prefixStyle: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600),
                        labelText: 'Bold Label',
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        hintText: 'w900 warna amber',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w900, color: Colors.amber),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    // maxLines: 3,
                    maxLength: 10,
                    onChanged: (value) {
                      setState(() {});
                    },
                    controller: controller,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.email),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.grey[400],
                        ),
                        prefixText: 'Email :',
                        prefixStyle: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600),
                        labelText: 'Medium weight',
                        labelStyle: TextStyle(fontWeight: FontWeight.w400),
                        hintText: 'w400 warna amber',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w900, color: Colors.lime),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    // maxLines: 3,
                    maxLength: 10,
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                  TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.keyboard),
                        prefixIcon: Icon(
                          Icons.lock_open,
                          color: Colors.grey[400],
                        ),
                        prefixText: 'Password :',
                        prefixStyle: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.w600),
                        labelText: 'Thin Label',
                        labelStyle: TextStyle(fontWeight: FontWeight.w300),
                        hintText: 'Passsword',
                        hintStyle: TextStyle(
                            fontWeight: FontWeight.w900, color: Colors.red),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                    // maxLines: 3,
                    obscureText: true,
                    maxLength: 10,
                    onChanged: (value) {
                      setState(() {});
                    },
                    controller: password,
                  ),
                  Row(
                    children: [
                      Text('yang anda ketik: '),
                      Text(controller.text,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
