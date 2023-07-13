import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class AdDesign extends StatefulWidget {
  const AdDesign({super.key});

  @override
  State<AdDesign> createState() => _AdDesignState();
}

class _AdDesignState extends State<AdDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Reklam Tasarım, Dijital Baskı", icon: Icons.arrow_back_ios_new_outlined),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Reklam Tasarım, Dijital Baskı"),
            ),
          ),
        ],
      ),
    );
  }
}
