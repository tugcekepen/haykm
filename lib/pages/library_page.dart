import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/pages/profile_page.dart';
import 'package:kutuphane_masa_takibi/pages/signin.dart';
import '../components/app_bar.dart';
import '../components/bottom_navi.dart';
import '../components/drawer_menu.dart';
import 'login.dart';

class LibraryPage extends StatefulWidget {
  @override
  _LibraryPage createState() => _LibraryPage();
}

class _LibraryPage extends State<LibraryPage>{
  GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  void drawerOpen() {
    _scaffold?.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      drawer: DrawerMenu(),
      appBar: CustomAppBar(scaffold: _scaffold, title: "Hasan Ali Yücel Kültür Merkezi",icon: Icon(Icons.menu), onIconPressed: drawerOpen),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Kütüphane"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavi(context, 3),
    );
  }


}