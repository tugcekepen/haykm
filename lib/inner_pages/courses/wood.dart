import 'package:flutter/material.dart';

import '../../components/app_bar.dart';

class Wood extends StatefulWidget {
  const Wood({super.key});

  @override
  State<Wood> createState() => _WoodState();
}

class _WoodState extends State<Wood> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
          title: "Ahşap CNC", icon: Icons.arrow_back_ios_new_outlined),
      body: SizedBox(
        width: double.infinity,
        child: Column(children: [
          Text("Bilgisayar Destekli Proje Çizimi"),
          Text("Ahşap CNC Makine Operatörü"),
          Text("Ahşap Oymacısı"),
          Text("Bilgisayar Destekli Mobilya Tasarımcısı"),
          Text("Ahşap Hediyelik Eşya Yapımı"),
          Text("Ahşap Şekillendirmeci"),
        ]),
      ),
    );
  }
}
