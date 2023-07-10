import 'package:flutter/material.dart';
import 'cafeteria_page.dart';
import 'courses_page.dart';
import 'library_page.dart';
import 'login.dart';
import 'signin.dart';
import 'profile_page.dart';
import 'news_page.dart';
import '../components/drawer_menu.dart';
import '../components/bottom_navi.dart';

int page = 0;

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final double imageSize = MediaQuery.of(context).size.width * 0.43;

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
      body: ListView(
        shrinkWrap: true,
          children: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/logo.jpg',
                    width: imageSize,
                    height: imageSize,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomCard(
                    image: 'assets/images/kurslar_cartgorseli.jpeg',
                    text: 'Kurslar',
                    onPressed: () {
                      if (!isLogin!) { // DUZENLENECEK
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CoursesPage(),
                          ),
                        );
                      } else if (isLogin!) {
                        page = 1;
                        print(page);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CoursesPage(),
                          ),
                        );
                      }
                    },
                  ),
                  CustomCard(
                    image: 'assets/images/kafe_cartgorseli.jpeg',
                    text: 'Kafeterya\n  Menüsü',
                    onPressed: () {
                      if (!isLogin!) { // DUZENLENECEK
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CafeteriaPage(),
                          ),
                        );
                      } else if (isLogin!) {
                        page = 2;
                        print(page);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CafeteriaPage(),
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
              SizedBox(height: 12.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomCard(
                    image: 'assets/images/kutuphane_cartgorseli.jpeg',
                    text: 'Kütüphane',
                    onPressed: () {
                      if (!isLogin!) { // DUZENLENECEK
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LibraryPage(),
                          ),
                        );
                      } else if (isLogin!) {
                        page = 3;
                        print(page);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LibraryPage(),
                          ),
                        );
                      }
                    },
                  ),
                  CustomCard(
                    image: 'assets/images/news_cartgorseli.jpeg',
                    text: 'Haberler',
                    onPressed: () { // DUZENLENECEK
                      if (!isLogin!) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewsPage(),
                          ),
                        );
                      } else if (isLogin!) {
                        page = 4;
                        print(page);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewsPage(),
                          ),
                        );
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavi(context, 0),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String image;
  final String text;
  final VoidCallback onPressed;

  const CustomCard({
    required this.image,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.width * 0.4,
      child: InkWell(
        splashColor: Colors.black,
        onTap: onPressed,
        child: Stack(
          children: [
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                image,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 12.0,
              left: 12.0,
              right: 12.0,
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.65),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Center(
                  child: Text(
                    text,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
