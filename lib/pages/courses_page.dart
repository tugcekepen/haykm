import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/components/drawer_menu.dart';
import 'package:kutuphane_masa_takibi/inner_pages/courses/sgiss_page.dart';
import 'package:kutuphane_masa_takibi/inner_pages/courses/ad_design.dart';
import 'package:kutuphane_masa_takibi/inner_pages/courses/art_design.dart';
import 'package:kutuphane_masa_takibi/inner_pages/courses/beauty_and_hair.dart';
import 'package:kutuphane_masa_takibi/inner_pages/courses/candle_and_soap.dart';
import 'package:kutuphane_masa_takibi/inner_pages/courses/child_develop.dart';
import 'package:kutuphane_masa_takibi/inner_pages/courses/cooking.dart';
import 'package:kutuphane_masa_takibi/inner_pages/courses/foreign_lang.dart';
import 'package:kutuphane_masa_takibi/inner_pages/courses/graph_anim_photo.dart';
import 'package:kutuphane_masa_takibi/inner_pages/courses/information_technologies.dart';
import 'package:kutuphane_masa_takibi/inner_pages/courses/jewelry.dart';
import 'package:kutuphane_masa_takibi/inner_pages/courses/pastry.dart';
import 'package:kutuphane_masa_takibi/inner_pages/courses/patient_elderly_care.dart';
import 'package:kutuphane_masa_takibi/inner_pages/courses/radio_tv.dart';
import 'package:kutuphane_masa_takibi/inner_pages/courses/technical_service.dart';
import 'package:kutuphane_masa_takibi/inner_pages/courses/wood.dart';
import 'package:kutuphane_masa_takibi/pages/home_page.dart';
import '../components/app_bar.dart';
import '../components/bottom_navi.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({super.key});

  @override
  _CoursesPage createState() => _CoursesPage();
}

class _CoursesPage extends State<CoursesPage> {
  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      drawer: const DrawerMenu(),
      appBar: CustomAppBar(
          scaffold: _scaffold,
          title: "Kurslar",
          icon: Icons.menu,
          onIconPressed: (){
            setState(() {
              _scaffold.currentState?.openDrawer();
            });
          }),
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
                    builder: (context) => const RadioTv(),
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
                    builder: (context) => const BeautyAndHair(),
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
                    builder: (context) => const ArtDesign(),
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
                    builder: (context) => const CandleAndSoap(),
                  ),
                );
              },
            ),
            KurslarKategoriButon(
              title: "Bilişim Teknolojileri",
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InfoTechno(),
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
                    builder: (context) => const TechService(),
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
                    builder: (context) => const GraphAnimPhoto(),
                  ),
                );
              },
            ),
            KurslarKategoriButon(
              title: "Reklam Tasarım, Dijital baskı",
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AdDesign(),
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
                    builder: (context) => const Jewelry(),
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
                    builder: (context) => const Wood(),
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
                    builder: (context) => const ChildDev(),
                  ),
                );
              },
            ),
            KurslarKategoriButon(
              title: "Hasta ve Yaşlı Bakımı",
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PatientElderlyCare(),
                  ),
                );
              },
            ),
            KurslarKategoriButon(
              title: "Aşçılık",
              function: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Cooking(),
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
                    builder: (context) => const Pastry(),
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
                    builder: (context) => const ForeignLang(),
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
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 5
          ),
            onPressed: function!,
            child: Text(title)),
      ),
    );
  }
}

class ApplyCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 5,
        shape: StadiumBorder(),
      ),
        onPressed: () {},
        child: Text("Kurslara Başvur")
    );
  }
}