import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/components/drawer_menu.dart';
import 'package:kutuphane_masa_takibi/inner_pages/ad_design.dart';
import 'package:kutuphane_masa_takibi/inner_pages/art_design.dart';
import 'package:kutuphane_masa_takibi/inner_pages/beauty_and_hair.dart';
import 'package:kutuphane_masa_takibi/inner_pages/candle_and_soap.dart';
import 'package:kutuphane_masa_takibi/inner_pages/child_develop.dart';
import 'package:kutuphane_masa_takibi/inner_pages/cooking.dart';
import 'package:kutuphane_masa_takibi/inner_pages/foreign_lang.dart';
import 'package:kutuphane_masa_takibi/inner_pages/graph_anim_photo.dart';
import 'package:kutuphane_masa_takibi/inner_pages/information_technologies.dart';
import 'package:kutuphane_masa_takibi/inner_pages/jewelry.dart';
import 'package:kutuphane_masa_takibi/inner_pages/pastry.dart';
import 'package:kutuphane_masa_takibi/inner_pages/patient_elderly_care.dart';
import 'package:kutuphane_masa_takibi/inner_pages/radio_tv.dart';
import 'package:kutuphane_masa_takibi/inner_pages/technical_service.dart';
import 'package:kutuphane_masa_takibi/inner_pages/wood.dart';
import 'package:kutuphane_masa_takibi/pages/home_page.dart';

import '../components/app_bar.dart';
import '../components/bottom_navi.dart';
import '../inner_pages/sgiss.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  _CoursesPage createState() => _CoursesPage();
}

class _CoursesPage extends State<CoursesPage> {
  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  void drawerOpen() {
    _scaffold.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      drawer: DrawerMenu(),
      appBar: CustomAppBar(scaffold: _scaffold, title: "Kurslar",icon: Icons.menu, onIconPressed: drawerOpen),
      body: SingleChildScrollView(
        child: Column(
          children: [
            KurslarKategoriButon(title:"Ses, Görüntü, Işık Sahne Sistemleri", onPressed: () => yonlendir(context, Sgiss()),),
            KurslarKategoriButon(title:"Radyo ve Televizyon", onPressed: () => yonlendir(context, RadioTv()),),
            KurslarKategoriButon(title:"Güzellik ve Saç Bakım Hizmetleri", onPressed: () => yonlendir(context, BeautyAndHair()),),
            KurslarKategoriButon(title:"Sanat Tasarımı", onPressed: () => yonlendir(context, ArtDesign()),),
            KurslarKategoriButon(title:"Mum ve Sabun ", onPressed: () => yonlendir(context, CandleAndSoap()),),
            KurslarKategoriButon(title:"Bilişim Teknolojileri", onPressed: () => yonlendir(context, InfoTechno()),),
            KurslarKategoriButon(title:"Teknik Servis", onPressed: () => yonlendir(context, TechService()),),
            KurslarKategoriButon(title:"Grafik, Animasyon, Fotoğraf Çekimi", onPressed: () => yonlendir(context, GraphAnimPhoto()),),
            KurslarKategoriButon(title:"Reklam Tasarım, Dijital baskı", onPressed: () => yonlendir(context, AdDesign()),),
            KurslarKategoriButon(title:"Kuyumculuk", onPressed: () => yonlendir(context, Jewelry()),),
            KurslarKategoriButon(title:"Ahşap CNC", onPressed: () => yonlendir(context, Wood()),),
            KurslarKategoriButon(title:"Çocuk Gelişimi", onPressed: () => yonlendir(context, ChildDev()),),
            KurslarKategoriButon(title:"Hasta ve Yaşlı Bakımı", onPressed: () => yonlendir(context, PatientElderlyCare()),),
            KurslarKategoriButon(title:"Aşçılık", onPressed: () => yonlendir(context, Cooking()),),
            KurslarKategoriButon(title:"Pastacılık", onPressed: () => yonlendir(context, Pastry()),),
            KurslarKategoriButon(title:"Yabancı Dil", onPressed: () => yonlendir(context, ForeignLang()),),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavi(context, 1),
    );
  }

  void yonlendir(BuildContext context,  Widget page) {

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );

  }
}

class KurslarKategoriButon extends StatelessWidget {
  const KurslarKategoriButon({
    super.key, required this.title, required this.onPressed,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 5
          ),
            onPressed: onPressed,
            child: Text(title)),
      ),
    );
  }
}


