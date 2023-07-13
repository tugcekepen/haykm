import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../components/bottom_navi.dart';
import '../components/drawer_menu.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  _LibraryPage createState() => _LibraryPage();
}

class _LibraryPage extends State<LibraryPage>{
  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  void drawerOpen() {
    _scaffold.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      drawer: DrawerMenu(),
      appBar: CustomAppBar(scaffold: _scaffold, title: "Kütüphane",icon: Icons.menu, onIconPressed: drawerOpen),
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