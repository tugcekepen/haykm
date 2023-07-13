import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class RadioTv extends StatefulWidget {
  const RadioTv({super.key});

  @override
  State<RadioTv> createState() => _RadioTvState();
}

class _RadioTvState extends State<RadioTv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          title: "Radyo ve Televizyon",
          icon: Icons.arrow_back_ios_new_outlined),
      body: ListView(children: const [
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(children: [
              Text("Radyo ve Televizyon"),
              Text("Kısa Film Yapımı"),
              Text("Senaryo Yazarlığı"),
              Text("Kameraman"),
              Text("Radyo ve TV Programcısı"),
              Text("Teknik Yapım Yayın Elemanı"),
              Text("3 Boyutlu Nesne Modelleme"),
              Text("Animasyon Hazırlama"),
              Text("3 Boyutlu Şekillendirme"),
              Text("Televizyon Grafiği"),
              Text("Televizyon Muhabiri"),
            ]),
          ),
        ),
      ]),
    );
  }
}
