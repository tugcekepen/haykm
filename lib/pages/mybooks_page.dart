import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../components/bottom_navi.dart';
import '../components/drawer_menu.dart';

class MyBooksPage extends StatefulWidget {
  const MyBooksPage({Key? key}) : super(key: key);

  @override
  State<MyBooksPage> createState() => _MyBooksState();
}

class _MyBooksState extends State<MyBooksPage> {
  GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  void drawerOpen() {
    _scaffold?.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      drawer: DrawerMenu(),
      appBar: CustomAppBar(scaffold: _scaffold, title: "Hasan Ali Yücel Kültür Merkezi",icon: Icons.menu, onIconPressed: drawerOpen),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Kitaplarım"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavi(context, 4),
    );
  }
}
