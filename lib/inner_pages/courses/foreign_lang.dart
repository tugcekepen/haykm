import 'package:flutter/material.dart';

import '../../components/app_bar.dart';

class ForeignLang extends StatefulWidget {
  const ForeignLang({super.key});

  @override
  State<ForeignLang> createState() => _ForeignLangState();
}

class _ForeignLangState extends State<ForeignLang> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Yabancı Dil", icon: Icons.arrow_back_ios_new_outlined),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text("Osmanlıca"),
            Text("İngilizce A1 (120)"),
            Text("İngilizce A2 (160)"),
            Text("Almanca A1 (120)"),
            Text("Almanca A2 (160)"),
            Text("Rusça A1 (120)"),
            Text("Rusça A2 (160)"),
            Text("Arapça A1 (120)"),
            Text("Arapça A2 (160)"),
            Text("Fransızca A1 (120)"),
            Text("Fransızca A2 (160)"),
            Text("Çince A1 (120)"),
            Text("Çince A2 (160)"),
            Text("Diğer"),

        ],
      ),
      ),
    );
  }
}
