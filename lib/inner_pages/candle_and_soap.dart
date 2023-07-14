import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class CandleAndSoap extends StatefulWidget {
  const CandleAndSoap({super.key});

  @override
  State<CandleAndSoap> createState() => _CandleAndSoapState();
}

class _CandleAndSoapState extends State<CandleAndSoap> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Mum ve Sabun", icon: Icons.arrow_back_ios_new_outlined),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text("Jel Mum Yapımı(120)"),
            Text("Mum Oymacılığı(216)"),
            Text("Mumda Resim(248)"),
            Text("El-Banyo Sabunu(528)"),
            Text("Mis Sabun Üretimi(248)"),
            Text("El Yapımı Sabun Üretimi(320)"),
            Text("Geleneksel Yöntemle Mum Modelleme(224)"),
          ],
        ),
      ),
    );
  }
}
