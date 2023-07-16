import 'package:flutter/material.dart';

import '../../components/app_bar.dart';

class PatientElderlyCare extends StatefulWidget {
  const PatientElderlyCare({super.key});

  @override
  State<PatientElderlyCare> createState() => _PatientElderlyCareState();
}

class _PatientElderlyCareState extends State<PatientElderlyCare> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
          title: "Hasta ve Yaşlı Bakımı",
          icon: Icons.arrow_back_ios_new_outlined),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text("Yaşlı Refakatçısı(384)"),
            Text("Hasta Refakatçısı(496)"),
            Text("Hasta ve Yaşlı Refakatçısı(560)"),
            Text("Hasta Bakım Elemanı(1304)"),
            Text("Yaşlı Bakım Elemanı(1272)"),
            Text("Engelli Bakım Elemanı(1376)"),
            Text("Özürlü Bakımı(400)"),
            Text("Hasta Kabul İşlemleri(240)"),
            Text("Genel Sağlık Bilgisi(72)"),
            Text("Evde Hasta ve Yaşlı Bakımı(48)"),
          ],
        ),
      ),
    );
  }
}
