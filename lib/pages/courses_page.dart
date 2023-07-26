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
import '../components/app_bar.dart';
import '../components/bottom_navi.dart';

int course_page = 0;

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
          onIconPressed: () {
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
                course_page = 1;
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
                course_page = 2;
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
                course_page = 3;
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
                course_page = 4;
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
                course_page = 5;
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
                course_page = 6;
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
                course_page = 7;
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
                course_page = 8;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GraphAnimPhoto(),
                  ),
                );
              },
            ),
            KurslarKategoriButon(
              title: "Reklam Tasarım, Dijital Baskı",
              function: () {
                course_page = 9;
                print(course_page);
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
                course_page = 10;
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
                course_page = 11;
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
                course_page = 12;
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
                course_page = 13;
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
                course_page = 14;
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
                course_page = 15;
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
                course_page = 16;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ForeignLang(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 13,
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
                elevation: 5, fixedSize: Size(330, 40)),
            onPressed: function!,
            child: Text(title, style: TextStyle(fontSize: 15),)),
      ),
    );
  }
}
