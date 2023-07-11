import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/components/drawer_menu.dart';
import 'package:kutuphane_masa_takibi/pages/login.dart';
import 'package:kutuphane_masa_takibi/pages/profile_page.dart';
import 'package:kutuphane_masa_takibi/pages/signin.dart';

import '../components/app_bar.dart';
import '../components/bottom_navi.dart';

class CoursesPage extends StatefulWidget {
  @override
  _CoursesPage createState() => _CoursesPage();
}

class _CoursesPage extends State<CoursesPage>{
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
          Padding(padding: const EdgeInsets.all(8.0),
          child: Card(
            color: Colors.red,
            child: Text('sddsghfh'),
          ),),
          Expanded(
            child: Center(
              child: Text("Kurslar"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavi(context, 1),
    );
  }


}