import 'package:flutter/material.dart';
import '../components/app_bar.dart';

class Jewelry extends StatefulWidget {
  const Jewelry({super.key});

  @override
  State<Jewelry> createState() => _JewelryState();
}

class _JewelryState extends State<Jewelry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Kuyumculuk", icon: Icons.arrow_back_ios_new_outlined),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Kuyumculuk"),
            ),
          ),
        ],
      ),
    );
  }
}
