import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class PatientElderlyCare extends StatefulWidget {
  const PatientElderlyCare({super.key});

  @override
  State<PatientElderlyCare> createState() => _PatientElderlyCareState();
}

class _PatientElderlyCareState extends State<PatientElderlyCare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Hasta ve Yaşlı Bakımı", icon: Icons.arrow_back_ios_new_outlined),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Hasta ve Yaşlı Bakımı"),
            ),
          ),
        ],
      ),
    );
  }
}
