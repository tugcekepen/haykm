import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class SgissPage extends StatefulWidget {
  const SgissPage({super.key});

  @override
  State<SgissPage> createState() => _SgissPageState();
}

class _SgissPageState extends State<SgissPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
          title: "Sahne Sistemleri", icon: Icons.arrow_back_ios_new_outlined),
      body: Column(children: [
        SgissText(text: "Görüntü ve Ses Sistemleri Elemanı(2584)"),
        SgissText(
            text:
                "Seslendirme ve Işıklandırma Sistemleri Kurulum, Bakım ve Onarımcısı(542)"),
        SgissText(text: "Isı ve Ses Yalıtımcısı(840)"),
        SgissText(
            text:
                "Tehlikeli ve Çok Tehlikeli İşlerde Görüntü Ses Sistemleri(40)"),
      ]),
    );
  }
}

class SgissText extends StatelessWidget {
  const SgissText({Key? key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Expanded(
          child: Center(
            child: Text(text),
          ),
        ));
  }
}
