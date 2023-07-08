import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/pages/cafeteria_page.dart';
import 'package:kutuphane_masa_takibi/pages/courses_page.dart';
import 'package:kutuphane_masa_takibi/pages/library_page.dart';
import 'package:kutuphane_masa_takibi/pages/login.dart';
import 'package:kutuphane_masa_takibi/pages/mybooks.dart';
import 'package:kutuphane_masa_takibi/pages/signin.dart';
import 'package:kutuphane_masa_takibi/pages/profile_page.dart';
import 'package:kutuphane_masa_takibi/components/drawer_menu.dart';

int page = 0;

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final double imageSize = MediaQuery.of(context).size.width * 0.6;

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
                  SizedBox(height: 12.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomCard(
                        image: 'assets/images/kurslar_cartgorseli.jpeg',
                        text: 'Kurslar',
                        onPressed: () {
                          if (!isLogin!) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignInPage(),
                              ),
                            );
                          } else if (isLogin!) {
                            page = 0;
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
                        text: 'Kafeterya Menüsü',
                        onPressed: () {
                          if (!isLogin!) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignInPage(),
                              ),
                            );
                          } else if (isLogin!) {
                            page = 1;
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
                          if (!isLogin!) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignInPage(),
                              ),
                            );
                          } else if (isLogin!) {
                            page = 2;
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
                        image: 'assets/images/kutuphane3_cartgorseli.jpeg',
                        text: 'Kitaplarım',
                        onPressed: () {
                          if (!isLogin!) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignInPage(),
                              ),
                            );
                          } else if (isLogin!) {
                            page = 3;
                            print(page);
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyBooksPage(),
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
              borderRadius: BorderRadius.circular(12.0),
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
                  color: Color(0xD5CE0D44).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Text(
                  text,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
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
