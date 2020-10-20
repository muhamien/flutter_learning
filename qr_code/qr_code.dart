import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicator: BoxDecoration(
          color: Colors.red[900],
          border: Border(bottom: BorderSide(color: Colors.white, width: 5))),
      tabs: [
        Tab(
          icon: Icon(Icons.code),
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
              bottom: PreferredSize(
                  preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                  child: Container(color: Colors.green[900], child: myTabBar)),
            ),
            body: TabBarView(
              children: [
                Center(
                  // menambah kan qr_flutter di pubspec.yaml
                  // import package
                  // pasang widget QrImage()
                  //
                  child: QrImage(
                    data: "Bayar woy",
                    padding: EdgeInsets.all(40),
                    errorCorrectionLevel: QrErrorCorrectLevel.M,
                    size: 300,
                    version: 3,
                  ),
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
