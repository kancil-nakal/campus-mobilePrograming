import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  Homescreen({Key key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 5, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("181011401443_IRSYAD AL FAHRIZA_UAS"),
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(
              icon: Icon(Icons.home),
            ),
            Tab(
              icon: Icon(Icons.person_outlined),
            ),
            Tab(
              icon: Icon(Icons.flag),
            ),
            Tab(
              icon: Icon(Icons.notifications),
            ),
            Tab(
              icon: Icon(Icons.more_vert),
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Center(child: Text("Beranda")),
          Center(child: Text("Profil")),
          Center(child: Text("Halaman")),
          Center(child: Text("Notifikasi")),
          Center(child: Text("Pengaturan"))
        ],
      ),
    );
  }
}
