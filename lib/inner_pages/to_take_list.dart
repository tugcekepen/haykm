import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../data/mybooks.dart';

class ToTakeList extends StatefulWidget {
  const ToTakeList({super.key});

  @override
  State<ToTakeList> createState() => _ToTakeListState();
}

class _ToTakeListState extends State<ToTakeList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          title: "Alınacak Kitaplar", icon: Icons.arrow_back_ios_new_outlined),
      body: SingleChildScrollView(
          child: ListView.builder(
        shrinkWrap: true,
        itemCount: toTakeList.length,
        itemBuilder: (context, index) {
          final category = toTakeList.keys.elementAt(index);
          final books = toTakeList[category] as Map<String, String>;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17, bottom: 8, top: 8),
                child: Text(
                  category,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(height: 2, color: Theme.of(context).dividerColor),
              ...books.entries.map(
                (entry) => ListTile(
                  title: Text(entry.key),
                  subtitle: Text(
                    entry.value,
                    style: TextStyle(color: const Color(0xFFCE0D44).withOpacity(0.6)),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        toTakeList[category]
                            .removeWhere((key, value) => value == entry.value);
                        if (toTakeList[category].isEmpty) {
                          toTakeList.remove(category);
                        }
                      });
                    },
                    icon: const Icon(
                      Icons.delete_outline,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      )),
    );
  }
}
