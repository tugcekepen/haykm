import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class Wood extends StatefulWidget {
  const Wood({super.key});

  @override
  State<Wood> createState() => _WoodState();
}

class _WoodState extends State<Wood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Ahşap CNC", icon: Icons.arrow_back_ios_new_outlined),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Ahşap CNC"),
            ),
          ),
        ],
      ),
    );
  }
}
