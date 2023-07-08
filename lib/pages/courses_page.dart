import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/components/drawer_menu.dart';
import 'package:kutuphane_masa_takibi/pages/login.dart';
import 'package:kutuphane_masa_takibi/pages/profile_page.dart';
import 'package:kutuphane_masa_takibi/pages/signin.dart';

import '../components/bottom_navi.dart';

class CoursesPage extends StatefulWidget {
  @override
  _CoursesPage createState() => _CoursesPage();
}

class _CoursesPage extends State<CoursesPage>{
  GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      drawer: DrawerMenu(),
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Hasan Ali Yücel Kültür Merkezi",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            _scaffold.currentState?.openDrawer();
          },
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
            onPressed: () {
              if (!isLogin!) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInPage(),
                  ),
                );
              } else if (isLogin!) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              }
            },
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body: Column(
        children: [
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