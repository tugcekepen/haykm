import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../components/bottom_navi.dart';
import '../data/mybooks.dart';
import '../models/book.dart';

class FavBooksPage extends StatefulWidget {
  const FavBooksPage({Key? key}) : super(key: key);

  @override
  State<FavBooksPage> createState() => _FavBooksState();
}

class _FavBooksState extends State<FavBooksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: "Favori Kitaplarım", icon: Icons.arrow_back_ios_new_outlined),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: favoriteBooks?.length,
          itemBuilder: (context, index) {
            final category = favoriteBooks.keys.elementAt(index);
            final books = favoriteBooks[category] as Map<String, String>;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 17, bottom: 8, top: 8),
                  child: Text(
                    category,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Divider(height: 2, color: Theme.of(context).dividerColor),
                ...books.entries.map(
                  (e) => ListTile(
                    title: Text(e.key),
                    subtitle: Text(
                      e.value,
                      style: TextStyle(
                        color: const Color(0xFFCE0D44).withOpacity(0.6),
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          favoriteBooks[category]
                              .removeWhere((key, value) => value == e.value);
                          if (favoriteBooks[category].isEmpty) {
                            favoriteBooks.remove(category);
                          }
                        });
                      },
                      icon: const Icon(Icons.delete_outline, size: 20,),
                    ),
                  ),
                )
              ],
            );
          },
        ),
      bottomNavigationBar: BottomNavi(context, 4),
    );
  }
}
