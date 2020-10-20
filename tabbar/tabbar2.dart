import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      // indicatorColor: Colors.lightGreenAccent[700],
      indicator: BoxDecoration(
          color: Colors.red[900],
          border: Border(bottom: BorderSide(color: Colors.white, width: 5))),
      tabs: [
        Tab(
          icon: Icon(Icons.camera_alt),
          iconMargin: EdgeInsets.zero,
        ),
        Tab(
          text: "Chat",
        ),
        Tab(
          text: "Status",
        ),
        Tab(
          text: "Calls",
        ),
      ],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          // 1. Atur Banyak Tab yang diinginkan
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.grey[900],
              actions: [
                IconButton(
                  icon: Icon(Icons.search),
                  color: Colors.green[900],
                  onPressed: null,
                ),
                IconButton(icon: Icon(Icons.more_vert), onPressed: null)
              ],
              title: Text("WhatsApp Clone"),
              // 2. tab button
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                  child: Container(color: Colors.green[900], child: myTabBar)),
            ),
            body: TabBarView(
              children: [
                Center(
                  child: Text("Camera"),
                ),
                Center(
                  child: Text("Chat"),
                ),
                Center(
                  child: Text("Status"),
                ),
                Center(
                  child: Text("Calls"),
                ),
              ],
            ),
          )),
    );
  }
}
