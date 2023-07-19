import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../components/drawer_menu.dart';
import '../data/mybooks.dart';

class MyBooksPage extends StatefulWidget {
  const MyBooksPage({Key? key}) : super(key: key);

  @override
  State<MyBooksPage> createState() => _MyBooksState();
}

class _MyBooksState extends State<MyBooksPage> {
  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  void drawerOpen() {
    _scaffold.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      drawer: DrawerMenu(),
      appBar: CustomAppBar(scaffold: _scaffold, title: "Hasan Ali Yücel Kültür Merkezi",icon: Icons.menu, onIconPressed: drawerOpen),
      body: CarouselSlider(
          items: imgList.map( (item) => Container(
            padding: EdgeInsets.all(5),
            child: Center(
              child: Image.asset(item, fit: BoxFit.cover,),
            ),
          )).toList(),
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
            viewportFraction: 1,
          ))


    );
  }
}
