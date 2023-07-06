import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFCE0D44),
        title: Text(
          "Hasan Ali Yücel Kültür Merkezi",
          style: TextStyle(fontSize: 18.5),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person_rounded),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipOval(
              child: Image.asset(
                'assets/photo_2023-07-07_00-07-07.jpg',
                width: 300,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 35),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Kurslar",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  fixedSize: Size(200, 40)),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 35),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Kafeterya Menüsü",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  fixedSize: Size(200, 40)),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 35),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Kütüphane",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  fixedSize: Size(200, 40)),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 35),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "??",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                  shape: StadiumBorder(),
                  fixedSize: Size(200, 40)),
            ),
            SizedBox(height: MediaQuery.of(context).size.height / 15),
          ],
        ),
      ),
    );
  }
}
