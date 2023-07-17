import 'package:flutter/material.dart';

import '../../components/app_bar.dart';

class GraphAnimPhoto extends StatefulWidget {
  const GraphAnimPhoto({super.key});

  @override
  State<GraphAnimPhoto> createState() => _GraphAnimPhotoState();
}

class _GraphAnimPhotoState extends State<GraphAnimPhoto> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
          title: "Grafik, Animasyon, Fotoğraf Ç.",
          icon: Icons.arrow_back_ios_new_outlined),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text("Grafik ve Animasyon(128)"),
            Text("Animasyon Hazırlama(128)"),
            Text("Grafiker(1464)"),
            Text("Fotoğraf Çekimi(96)"),
            Text("3D Max(120)"),
            Text("Dijital Fotoğrafçılık(200)"),
            Text("Gazetecilik ve İletişim(96)"),
            Text("3 Boyutlu Yazıcı Eğitimi(96)"),
            Text("CorelDRAW(72)"),
            Text("Photoshop(72)"),
          ],
        ),
      ),
    );
  }
}
