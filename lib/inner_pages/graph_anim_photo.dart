import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class GraphAnimPhoto extends StatefulWidget {
  const GraphAnimPhoto({super.key});

  @override
  State<GraphAnimPhoto> createState() => _GraphAnimPhotoState();
}

class _GraphAnimPhotoState extends State<GraphAnimPhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Grafik, Animasyon, Fotoğraf Ç.", icon: Icons.arrow_back_ios_new_outlined),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Grafik, Animasyon, Fotoğraf Çekimi"),
            ),
          ),
        ],
      ),
    );
  }
}
