import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/components/drawer_menu.dart';
import 'package:kutuphane_masa_takibi/pages/sgiss_page.dart';

import '../components/app_bar.dart';
import '../components/bottom_navi.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  _CoursesPage createState() => _CoursesPage();
}

class _CoursesPage extends State<CoursesPage> {
  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  void drawerOpen() {
    _scaffold?.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      drawer: const DrawerMenu(),
      appBar: CustomAppBar(
          scaffold: _scaffold,
          title: "Kurslar",
          icon: Icons.menu,
          onIconPressed: drawerOpen),
      body: SingleChildScrollView(
        child: Column(
          children: [
            KurslarKategoriButon(
              title: "Ses, Görüntü, Işık Sahne Sistemleri",
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SgissPage(),
                  ),
                );
              },
            ),
            KurslarKategoriButon(
              title: "Radyo ve Televizyon",
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SgissPage(),
                  ),
                );
              },
            ),
            KurslarKategoriButon(
              title: "Güzellik ve Saç Bakım Hizmetleri",
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SgissPage(),
                  ),
                );
              },
            ),
            KurslarKategoriButon(
              title: "Radyo ve Televizyon",
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SgissPage(),
                  ),
                );
              },
            ),
            KurslarKategoriButon(
              title: "Sanat Tasarım",
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SgissPage(),
                  ),
                );
              },
            ),
            KurslarKategoriButon(
              title: "Mum ve Sabun",
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SgissPage(),
                  ),
                );
              },
            ),
            KurslarKategoriButon(
              title: "Bilişim teknolojileri",
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SgissPage(),
                  ),
                );
              },
            ),
            KurslarKategoriButon(
              title: "Teknik Servis",
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SgissPage(),
                  ),
                );
              },
            ),
            KurslarKategoriButon(
              title: "Grafik, Animasyon, Fotoğraf Çekimi",
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SgissPage(),
                  ),
                );
              },
            ),
            KurslarKategoriButon(
              title: "Reklam Tasarım, Dişital baskı",
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SgissPage(),
                  ),
                );
              },
            ),
            KurslarKategoriButon(
              title: "Kuyumculuk",
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SgissPage(),
                  ),
                );
              },
            ),
            KurslarKategoriButon(
              title: "Ahşap CNC",
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SgissPage(),
                  ),
                );
              },
            ),
            KurslarKategoriButon(
              title: "Çocuk Gelişimi",
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SgissPage(),
                  ),
                );
              },
            ),
            KurslarKategoriButon(
              title: "Hasta ve Yaşlı Bakımı",
              function: () {},
            ),
            KurslarKategoriButon(
              title: "Aşçılık",
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SgissPage(),
                  ),
                );
              },
            ),
            KurslarKategoriButon(
              title: "Pastacılık",
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SgissPage(),
                  ),
                );
              },
            ),
            KurslarKategoriButon(
              title: "Yabancı Dil",
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SgissPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavi(context, 1),
    );
  }
}

class KurslarKategoriButon extends StatelessWidget {
  final String title;
  final VoidCallback? function;

  const KurslarKategoriButon({
    super.key,
    required this.title,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: ElevatedButton(onPressed: function!, child: Text(title)),
      ),
    );
  }
}
