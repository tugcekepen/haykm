import 'package:flutter/material.dart';

import '../../components/app_bar.dart';

class InfoTechno extends StatefulWidget {
  const InfoTechno({super.key});

  @override
  State<InfoTechno> createState() => _InfoTechnoState();
}

class _InfoTechnoState extends State<InfoTechno> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
          title: "Bilişim Teknolojileri",
          icon: Icons.arrow_back_ios_new_outlined),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text("Bilgisayar Kullanımı(160)"),
            Text("Web Tasarımcı(192)"),
            Text("Ofis Programları Kullanımı(72)"),
            Text("Veri Tabanı(88)"),
            Text("Bilgisayar Programlama Teknikleri(128)"),
            Text("Web Programcısı(1632)"),
            Text("İnternet Programcısı(160)"),
            Text("Ağ Temelleri(176)"),
            Text("Temel Bilgisayar Okur Yazarlığı(32)"),
            Text("Android ile Mobil Programlama(192)"),
          ],
        ),
      ),
    );
  }
}
