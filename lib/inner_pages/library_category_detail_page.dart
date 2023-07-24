import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../models/book.dart';

Set<Book> favoriteBooks = {};

void toggleFavorite(Book book, bool isFavorite) {
  if (isFavorite) {
    favoriteBooks.add(book);
  } else {
    favoriteBooks.remove(book);
  }
  print(favoriteBooks);
}

class CategoryDetailPage extends StatefulWidget {
  final String category;
  final Map<String, String> books;

  CategoryDetailPage({required this.category, required this.books});

  @override
  _CategoryDetailPageState createState() => _CategoryDetailPageState();
}

class _CategoryDetailPageState extends State<CategoryDetailPage> {
  List<Book> filteredBooks = [];

  @override
  void initState() {
    super.initState();
    filteredBooks = widget.books.entries
        .map((entry) => Book(entry.key, entry.value, widget.category))
        .toList();
  }

  void filterBooks(String searchText) {
    setState(() {
      filteredBooks = widget.books.entries
          .where((entry) =>
      entry.key.toLowerCase().contains(searchText.toLowerCase()) ||
          entry.value.toLowerCase().contains(searchText.toLowerCase()))
          .map((entry) => Book(entry.key, entry.value, widget.category))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: widget.category, icon: Icons.arrow_back_ios_new_outlined),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              onChanged: (value) => filterBooks(value),
              decoration: InputDecoration(
                  hintText: 'Kitap arayın...',
                  prefixIcon: Icon(Icons.search)
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredBooks.length,
              itemBuilder: (context, index) {
                Book book = filteredBooks[index];
                return ListTile(
                  trailing: IconButton(
                    icon: book.isStarred
                        ? Icon(Icons.star)
                        : Icon(Icons.star_border),
                    onPressed: () {
                      setState(() {
                        book.isStarred = !book.isStarred;
                      });
                      toggleFavorite(book, book.isStarred);
                    },
                  ),
                  title: Text(book.name),
                  subtitle: Text(
                    book.author,
                    style:
                    TextStyle(color: const Color(0xFFCE0D44).withOpacity(0.6)),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
