import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/pages/cafeteria_page.dart';
import 'package:kutuphane_masa_takibi/pages/courses_page.dart';
import 'package:kutuphane_masa_takibi/pages/library_page.dart';
import 'package:kutuphane_masa_takibi/pages/login.dart';
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
        backgroundColor: Color(0xFFCE0D44),
        flexibleSpace: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Hasan Ali Yücel Kültür Merkezi",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),
              ),
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {

          },
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {
              if(!isLogin){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInPage(),
                  ),
                );
              } else if (isLogin){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              }
            },
            icon: Icon(Icons.person_rounded),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.topCenter,
                child: ClipOval(
                  child: Image.asset(
                    'assets/photo_2023-07-07_00-07-07.jpg',
                    width: imageSize,
                    height: imageSize,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CoursesPage(),
                  ),
                );
              },
              child: Text(
                "Kurslar",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                fixedSize: Size(200, 40),
              ),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CafeteriaPage(),
                  ),
                );
              },
              child: Text(
                "Kafeterya Menüsü",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(), fixedSize: Size(200, 40)),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LibraryPage(),
                  ),
                );
              },
              child: Text(
                "Kütüphane",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(), fixedSize: Size(200, 40)),
            ),
            SizedBox(height: 12.0),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "??",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(), fixedSize: Size(200, 40)),
            ),
          ],
        ),
      ),
    );
  }
}


