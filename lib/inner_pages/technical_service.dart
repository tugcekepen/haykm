import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class TechService extends StatefulWidget {
  const TechService({super.key});

  @override
  State<TechService> createState() => _TechServiceState();
}

class _TechServiceState extends State<TechService> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
          title: "Teknik Servis", icon: Icons.arrow_back_ios_new_outlined),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text("Bilgisayar Sistem Bakım Onarım(152)"),
            Text("Bilgisayar Teknik Servis Elemanı(1328)"),
            Text("Bilişim Teknolojileri Donanımı(120)"),
            Text("Bilgisayar Sistem Kurulum Bakım Onarım ve Arıza Giderme(352)"),
            Text("Ağ Sistemleri ve Yönlendirme(600)"),
            Text("Ağ Veritabanı(288)"),
            Text("Bilgisayar İşletmenliği(163)"),
            Text("Veri Kurtarma ve Sistem Yedekleme(36)"),
          ],
        ),
      ),
    );
  }
}
