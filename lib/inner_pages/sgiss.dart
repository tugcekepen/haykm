import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class Sgiss extends StatefulWidget {
  const Sgiss({super.key});

  @override
  State<Sgiss> createState() => _SgissState();
}

class _SgissState extends State<Sgiss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Sahne Sistemleri", icon: Icons.arrow_back_ios_new_outlined),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Ses, Görüntü, Işık Sahne Sistemleri"),
            ),
          ),
        ],
      ),
    );
  }
}
