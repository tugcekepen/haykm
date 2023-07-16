import 'package:flutter/material.dart';
import '../../components/app_bar.dart';
import '../../data/courses_items.dart';
import '../apply_course_form.dart';

String course_page = "Reklam Tasarımı";

class AdDesign extends StatefulWidget {
  const AdDesign({super.key});

  @override
  State<AdDesign> createState() => _AdDesignState();
}

class _AdDesignState extends State<AdDesign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: "Reklam Tasarım, Dijital Baskı",
          icon: Icons.arrow_back_ios_new_outlined),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: AdDesignItems.length,
                itemBuilder: (context, index) {
                  final item = AdDesignItems.keys.elementAt(index);
                  final value = AdDesignItems.values.elementAt(index);
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
                        if(value==0)
                          Text("-",
                            style: TextStyle(fontSize: 15),)
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
              padding: EdgeInsets.only(left:20, right: 20, bottom: 25),
              child: ApplyCourseButton(),
            )
          ],
        ),
      ),
    );
  }
}
