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
      appBar: CustomAppBar(title: "Güzellik ve Saç Bakım Hizmetleri", icon: Icons.arrow_back_ios_new_outlined),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Güzellik ve Saç Bakım Hizmetleri"),
            ),
          ),
        ],
      ),
    );
  }
}
