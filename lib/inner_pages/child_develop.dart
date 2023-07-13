import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class ChildDev extends StatefulWidget {
  const ChildDev({super.key});

  @override
  State<ChildDev> createState() => _ChildDevState();
}

class _ChildDevState extends State<ChildDev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Çocuk Gelişimi", icon: Icons.arrow_back_ios_new_outlined),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Çocuk Gelişimi"),
            ),
          ),
        ],
      ),
    );
  }
}
