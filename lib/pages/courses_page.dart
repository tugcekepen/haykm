import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/components/drawer_menu.dart';

import '../components/app_bar.dart';
import '../components/bottom_navi.dart';

class CoursesPage extends StatefulWidget {
  @override
  _CoursesPage createState() => _CoursesPage();
}

class _CoursesPage extends State<CoursesPage> {
  GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  void drawerOpen() {
    _scaffold?.currentState?.openDrawer();
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
            KurslarKategoriButon(title:"Ses, Görüntü, Işık Sahne Sistemleri" ),
            KurslarKategoriButon(title:"Radyo ve Televizyon" ),
            KurslarKategoriButon(title:"Güzellik ve Saç Bakım Hizmetleri" ),
            KurslarKategoriButon(title:"Radyo ve Televizyon" ),
            KurslarKategoriButon(title:"Sanat Tasarım" ),
            KurslarKategoriButon(title:"Mum ve Sabun" ),
            KurslarKategoriButon(title:"Bilişim teknolojileri" ),
            KurslarKategoriButon(title:"Teknik Servis" ),
            KurslarKategoriButon(title:"Grafik, Animasyon, Fotoğraf Çekimi" ),
            KurslarKategoriButon(title:"Reklam Tasarım, Dişital baskı" ),
            KurslarKategoriButon(title:"Kuyumculuk" ),
            KurslarKategoriButon(title:"Ahşap CNC" ),
            KurslarKategoriButon(title:"Çocuk Gelişimi" ),
            KurslarKategoriButon(title:"Hasta ve Yaşlı Bakımı" ),
            KurslarKategoriButon(title:"Aşçılık" ),
            KurslarKategoriButon(title:"Pastacılık" ),
            KurslarKategoriButon(title:"Yabancı Dil" ),
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
    super.key, required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: ElevatedButton(
              onPressed: (){

              },
              child: Text(title)),
        ),
    );
  }
}

