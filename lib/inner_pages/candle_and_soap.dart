import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class CandleAndSoap extends StatefulWidget {
  const CandleAndSoap({super.key});

  @override
  State<CandleAndSoap> createState() => _CandleAndSoapState();
}

class _CandleAndSoapState extends State<CandleAndSoap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Mum ve Sabun", icon: Icons.arrow_back_ios_new_outlined),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Mum ve Sabun Yapımı"),
            ),
          ),
        ],
      ),
    );
  }
}
