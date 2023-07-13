import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class BeautyAndHair extends StatefulWidget {
  const BeautyAndHair({super.key});

  @override
  State<BeautyAndHair> createState() => _BeautyAndHairState();
}

class _BeautyAndHairState extends State<BeautyAndHair> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          title: "Güzellik ve Saç Bakım Hizmetleri",
          icon: Icons.arrow_back_ios_new_outlined),
      body: ListView(children: const [
        Expanded(
          child: Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(children: [
                  Text("Sahne Makyajı(306)"),
                  Text("Makyaj Yapma Teknikleri(208)"),
                  Text("Makyaj Elemanı(2528)"),
                  Text("Kalıcı Makyaj(348)"),
                  Text("Makyör-Makyöz(497)"),
                ]),
              )),
        ),
      ]),
    );
  }
}
