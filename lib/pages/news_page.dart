import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/pages/profile_page.dart';
import 'package:kutuphane_masa_takibi/pages/signin.dart';
import '../components/bottom_navi.dart';
import '../components/drawer_menu.dart';
import 'login.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
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
              child: Text("Haberler"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavi(context, 4),
    );
  }
}
