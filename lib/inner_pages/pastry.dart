import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class Pastry extends StatefulWidget {
  const Pastry({super.key});

  @override
  State<Pastry> createState() => _PastryState();
}

class _PastryState extends State<Pastry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Pastacılık", icon: Icons.arrow_back_ios_new_outlined),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Pastacılık"),
            ),
          ),
        ],
      ),
    );
  }
}
