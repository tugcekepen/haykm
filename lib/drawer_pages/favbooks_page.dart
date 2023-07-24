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
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: favoriteBooks.length,
              itemBuilder: (context, index) {
                Book book = favoriteBooks[index];
                return ListTile(
                  title: Text(book.name),
                  subtitle: Text(
                    book.author,
                    style:
                    TextStyle(color: const Color(0xFFCE0D44).withOpacity(0.6)),
                  ),
                  trailing: IconButton(
                    onPressed: () {
                      setState(() {

                      });
                      print(favoriteBooks);
                    },
                    icon: const Icon(
                      Icons.delete_outline,
                      size: 20,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavi(context, 4),
    );
  }
}

