import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class ChildDev extends StatefulWidget {
  const ChildDev({super.key});

  @override
  State<ChildDev> createState() => _ChildDevState();
}

class _ChildDevState extends State<ChildDev> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
          title: "Çocuk Gelişimi", icon: Icons.arrow_back_ios_new_outlined),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text("0-3 Yaş Çocuk Etkinlikleri(440)"),
            Text("3-6 Yaş Çocuk Etkinlikleri(464)"),
            Text("Çocuk Bakım Elemanı(936)"),
            Text("Özel Eğitim Elemanı (1312)"),
            Text("Çocuk Bakımı ve Gelişimsel Etkinlikleri(120)"),
            Text("Çocuk Bakımı ve Sosyal Etkinlikleri(80)"),
            Text("Evde Çocuk Bakımı(432)"),
            Text("Çocuk Bakımı ve Oyun Odası Etkinlikleri(360)"),
          ],
        ),
      ),
    );
  }
}
