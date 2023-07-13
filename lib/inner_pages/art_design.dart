import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class ArtDesign extends StatefulWidget {
  const ArtDesign({super.key});

  @override
  State<ArtDesign> createState() => _ArtDesignState();
}

class _ArtDesignState extends State<ArtDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Sanat Tasarımı", icon: Icons.arrow_back_ios_new_outlined),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Sanat Tasarımı"),
            ),
          ),
        ],
      ),
    );
  }
}
