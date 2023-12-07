import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/data/courses_items.dart';
import 'package:kutuphane_masa_takibi/inner_pages/apply_course_form.dart';
import '../../components/app_bar.dart';

class Jewelry extends StatefulWidget {
  const Jewelry({super.key});

  @override
  State<Jewelry> createState() => _JewelryState();
}

class _JewelryState extends State<Jewelry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: "Kuyumculuk", icon: Icons.arrow_back_ios_new_outlined),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: JewelryItems.length,
                itemBuilder: (context, index) {
                  final item = JewelryItems.keys.elementAt(index);
                  final value = JewelryItems.values.elementAt(index);
                  return Container(
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    margin: EdgeInsets.only(bottom: 5),
                    padding: EdgeInsets.all(3),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            item,
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        if (value == 0)
                          Text(
                            "-",
                            style: TextStyle(fontSize: 15),
                          )
                        else
                          Text(
                            '($value)',
                            style: TextStyle(fontSize: 15),
                          )
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 25),
              child: ApplyCourseButton(),
            )
          ],
        ),
      ),
    );
  }
}
