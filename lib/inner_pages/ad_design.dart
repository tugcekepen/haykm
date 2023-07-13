import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class AdDesign extends StatefulWidget {
  const AdDesign({super.key});

  @override
  State<AdDesign> createState() => _AdDesignState();
}

class _AdDesignState extends State<AdDesign> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
          title: "Reklam Tasarım, Dijital Baskı",
          icon: Icons.arrow_back_ios_new_outlined),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text("Bilgisayar Destekli Reklam Tasarım(128)"),
            Text("PhotoShop(72)"),
            Text("İllustrasyon(128)"),
            Text("Dijital Baskı(280)"),
            Text("Masaüstü Yayıncılık(392)"),
            Text("Serigrafi(384)"),
            Text("Grafik Desen Çizimi(288)"),
            Text("Ciltleme(480)"),
            Text("Fotoğraf Baskı Operatörü(2352)"),
            Text("Yayın Grafiği"),
          ],
        ),
      ),
    );
  }
}
