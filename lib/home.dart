import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/pages/cafeteria_page.dart';
import 'package:kutuphane_masa_takibi/pages/courses_page.dart';
import 'package:kutuphane_masa_takibi/pages/library_page.dart';
import 'package:kutuphane_masa_takibi/pages/login.dart';
import 'package:kutuphane_masa_takibi/pages/signin.dart';
import 'package:kutuphane_masa_takibi/pages/profile_page.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final double imageSize = MediaQuery.of(context).size.width * 0.6;

    return Scaffold(
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
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
            onPressed: () {
              if (!isLogin) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInPage(),
                  ),
                );
              } else if (isLogin) {
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Dikeyde ortala
          children: [
            Expanded(
              // Tüm boş alanı kapla
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: ClipOval(
                      child: Image.asset(
                        'assets/logo.jpg',
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
                        image: 'assets/kurslar_cartgorseli.jpeg',
                        text: 'Kurslar',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CoursesPage(),
                            ),
                          );
                        },
                      ),
                      CustomCard(
                        image: 'assets/kafe_cartgorseli.jpeg',
                        text: 'Kafeterya Menüsü',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => CafeteriaPage(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 12.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomCard(
                        image: 'assets/kutuphane_cartgorseli.jpeg',
                        text: 'Kütüphane',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LibraryPage(),
                            ),
                          );
                        },
                      ),
                      CustomCard(
                        image: 'assets/kutuphane3_cartgorseli.jpeg',
                        text: '??',
                        onPressed: () {  },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
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
