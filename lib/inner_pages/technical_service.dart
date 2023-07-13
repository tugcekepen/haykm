import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class TechService extends StatefulWidget {
  const TechService({super.key});

  @override
  State<TechService> createState() => _TechServiceState();
}

class _TechServiceState extends State<TechService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Teknik Servis", icon: Icons.arrow_back_ios_new_outlined),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Teknik Servis"),
            ),
          ),
        ],
      ),
    );
  }
}
