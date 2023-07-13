import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class InfoTechno extends StatefulWidget {
  const InfoTechno({super.key});

  @override
  State<InfoTechno> createState() => _InfoTechnoState();
}

class _InfoTechnoState extends State<InfoTechno> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Bilişim Teknolojileri", icon: Icons.arrow_back_ios_new_outlined),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Bilişim Teknolojileri"),
            ),
          ),
        ],
      ),
    );
  }
}
