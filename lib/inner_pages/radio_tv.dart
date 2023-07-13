import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class RadioTv extends StatefulWidget {
  const RadioTv({super.key});

  @override
  State<RadioTv> createState() => _RadioTvState();
}

class _RadioTvState extends State<RadioTv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Radyo ve Televizyon", icon: Icons.arrow_back_ios_new_outlined),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Radyo ve Televizyon"),
            ),
          ),
        ],
      ),
    );
  }
}
