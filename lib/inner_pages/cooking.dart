import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class Cooking extends StatefulWidget {
  const Cooking({super.key});

  @override
  State<Cooking> createState() => _CookingState();
}

class _CookingState extends State<Cooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Aşçılık", icon: Icons.arrow_back_ios_new_outlined),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Aşçılık"),
            ),
          ),
        ],
      ),
    );
  }
}
