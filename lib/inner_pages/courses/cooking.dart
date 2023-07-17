import 'package:flutter/material.dart';

import '../../components/app_bar.dart';

class Cooking extends StatefulWidget {
  const Cooking({super.key});

  @override
  State<Cooking> createState() => _CookingState();
}

class _CookingState extends State<Cooking> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
          title: "Aşçılık", icon: Icons.arrow_back_ios_new_outlined),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text("Aşçı Çırağı"),
            Text("Aşçı yardımcısı"),
            Text("Aşçı"),
            Text("Pideci"),
            Text("Pizzacı"),
            Text("Gıda Hijyeni ve Sanitasyon"),
            Text("Ev Yemekleri Hazırlama"),
          ],
        ),
      ),
    );
  }
}
