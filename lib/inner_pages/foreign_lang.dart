import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class ForeignLang extends StatefulWidget {
  const ForeignLang({super.key});

  @override
  State<ForeignLang> createState() => _ForeignLangState();
}

class _ForeignLangState extends State<ForeignLang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Yabancı Dil", icon: Icons.arrow_back_ios_new_outlined),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Yabancı Dil"),
            ),
          ),
        ],
      ),
    );
  }
}
