import 'package:flutter/material.dart';
import '../components/app_bar.dart';

class Jewelry extends StatefulWidget {
  const Jewelry({super.key});

  @override
  State<Jewelry> createState() => _JewelryState();
}

class _JewelryState extends State<Jewelry> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
          title: "Kuyumculuk", icon: Icons.arrow_back_ios_new_outlined),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text("Gümüş Takı İşlemeciliği"),
            Text("Takı Çizimi ve Üretimi"),
            Text("Hasır Örmeci"),
            Text("Takı Yapımı"),
            Text("İmitasyon Takı İmalatçısı"),
            Text("Diğer"),
          ],
        ),
      ),
    );
  }
}
