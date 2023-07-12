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
<<<<<<< HEAD
      appBar: CustomAppBar(scaffold: _scaffold, title: "Kurslar",icon: Icons.menu, onIconPressed: drawerOpen),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Kurslar"),
            ),
          ),
        ],
=======
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
                    color: Theme.of(context).primaryColor),
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
                yonlendir(context, SignInPage());
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
>>>>>>> 040172a2c9b00c7f127c740097dcaad8a9ca75ff
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

