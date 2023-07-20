import 'package:flutter/material.dart';

import '../components/app_bar.dart';
import '../data/mybooks.dart';

class ToTakeList extends StatelessWidget {
  const ToTakeList({super.key});

  final int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          title: "Alınacak Kitaplar", icon: Icons.arrow_back_ios_new_outlined),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(8),
            child : Text(toTakeList[_index])),
            ListView.builder(
                shrinkWrap: true,
                itemCount: toTakeList.length,
                itemBuilder: (context, index) {
                  return ListTile(

                  );
                }),
          ]
        ),
      )
    );
  }
}
