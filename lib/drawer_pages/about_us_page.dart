import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/pages/cafeteria_page.dart';
import 'package:kutuphane_masa_takibi/pages/courses_page.dart';
import 'package:kutuphane_masa_takibi/pages/library_page.dart';

import '../components/app_bar.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          title: "Hakkımızda", icon: Icons.arrow_back_ios_new_outlined),
      body: ListView(shrinkWrap: true, children: [
        Container(
            color: const Color(0xFFCE0D44).withOpacity(0.08),
            padding: EdgeInsets.all(8.0),
            child: Column(children: [
              Column(
                children: [
                  Container(
                    height: 5,
                    color: Color(0xFFCE0D44),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Center(
                      child: Text(
                    "Hasan Ali Yücel\nGençlik Bilim ve Sanat Merkezi",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                        color: Colors.black87),
                  )),
                  const SizedBox(
                    height: 3,
                  ),
                  Container(
                    height: 5,
                    color: const Color(0xFFCE0D44),
                  ),
                ],
              ),
              const SizedBox(
                height: 7,
              ),
              Image.asset(
                "assets/images/genclik_merkezi.jpg",
                width: MediaQuery.of(context).size.width * 0.9,
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                    "Atakum Belediyesi Hasan Ali Yücel Gençlik, Bilim ve Sanat Merkezi gençlerin meslek edinecekleri, kendilerini geliştirecekleri, dayanışma ve yardımlaşmayla üretime katılabilecekleri bir “Buluşma” merkezidir."),
              ),
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                    "Çağın teknolojisine sahip mesleki eğitim kursları ile donanımlı gençlerin yetiştirilmesini ve istihdama katkı yapmayı hedefleyen merkezimiz, aynı zamanda öğrenci kenti olan Atakum’da gençlerin ihtiyacı olan tüm eğitim imkanıyla hizmetinize sunulmuştur."),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CoursesPage()),
                      );
                    },
                    child: Text(
                      "Kurslarımız",
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CafeteriaPage()),
                      );
                    },
                    child: Text(
                      "AtaKafe",
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LibraryPage()),
                      );
                    },
                    child: Text(
                      "Kütüphane",
                      style: TextStyle(fontSize: 11),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 6, bottom: 4),
                    child: Image.asset(
                      "assets/images/hasan_ali_yucel.png",
                      width: 100,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Expanded(
                      child: Text(
                          "Hasan Âli Yücel, 17 Aralık 1897'de İstanbul'da doğdu. "
                          "İstanbul Üniversitesi Edebiyat Fakültesi Felsefe Bölümü'nü bitirdi "
                          "ve 19 Aralık 1922'de öğretmenliğe başladı. "
                          "12 Temmuz 1932 tarihinde Hasan Âli Yücel etimoloji kolu başkanlığına getirildi.")),
                ],
              ),
              const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                      "1935 yılında Cumhuriyet Halk Partisi'nden İzmir milletvekili olarak meclise girdi ve art arda dört dönem milletvekilliği yaptı. ")),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                    "28 Aralık 1938'de Hasan Âli Yücel, 2'nci Celal Bayar hükûmetinde Millî Eğitim Bakanlığı'na getirildi. Üniversite reformu Köy Enstitüleri'nin kurulması, dünya klasiklerinin Türkçeye çevrilmesi ve ilk resmî ve telifli Türkçe ansiklopedi olan İnönü Ansiklopedisi'nin ön çalışmaları, hep onun bakanlığı döneminde gerçekleşmiştir."),
              ),
              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Text(
                    "20 Mayıs 1940'ta Devlet Konservatuvarı'nın kurulması, Türkiye'nin UNESCO'ya girişi onun çabaları sonucunda olmuştur. Dört yıllık çabaları sonucunda 25 Haziran 1946'da Üniversiteler Yasası çıkartılmıştır."),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "İletişim Bilgilerimiz",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: ListTile(
                        leading: Icon(
                          Icons.mail_outline,
                          color: Colors.black,
                          size: 35,
                        ),
                        title: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "ornek_genclikmerkezi@mail.com",
                              style: TextStyle(fontSize: 13),
                            )),
                      )),
                  Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: ListTile(
                        leading: Icon(
                          Icons.local_phone_outlined,
                          color: Colors.black,
                          size: 35,
                        ),
                        title: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "05551112233",
                              style: TextStyle(fontSize: 13),
                            )),
                      )),
                  Padding(
                      padding: EdgeInsets.only(left: 12),
                      child: ListTile(
                        leading: Icon(
                          Icons.location_city,
                          color: Colors.black,
                          size: 35,
                        ),
                        title: Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "Cumhuriyet, 45. Sk. No:11, 55200 Atakum/Samsun",
                              style: TextStyle(fontSize: 13),
                            )),
                      )),
                ],
              ),
              SizedBox(height: 7),
            ])),
      ]),
    );
  }
}
