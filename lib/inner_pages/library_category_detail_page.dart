import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/data/mybooks.dart';
import '../components/app_bar.dart';
import '../drawer_pages/favbooks_page.dart';
import '../models/book.dart';

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
                  hintText: 'Kitap arayın...', prefixIcon: Icon(Icons.search)),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: filteredBooks.length,
              itemBuilder: (context, index) {
                Book? book = filteredBooks[index]!;
                if (book == null) {
                  // Return an empty container or a widget to handle the null case
                  return Container();
                }
                return ListTile(
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.playlist_add),
                        onPressed: () {
                          if (book != null && toTakeList.containsKey(book.category)) {
                            toTakeList[book.category]?.addAll({book.name: book.author});
                          } else if (book != null) {
                            toTakeList.addAll({book.category: {book.name: book.author}});
                          }
                          print(toTakeList);
                          final snackBar = SnackBar(
                            duration: const Duration(milliseconds: 800),
                            content: Text('Alınacaklar Listesine Eklendi.'),
                            action: SnackBarAction(
                              label: 'Geri Al',
                              onPressed: () {
                                if(book != null && toTakeList.containsKey(book.category)){
                                  toTakeList[book.category]?.remove(book.name);
                                  if (toTakeList[book.category]?.isEmpty ?? true) {
                                    toTakeList.remove(book.category);
                                  }
                                }
                                print(toTakeList);
                              },
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                      ),
                      IconButton(
                        icon: book != null && book.isStarred
                            ? Icon(Icons.star)
                            : Icon(Icons.star_border),
                        onPressed: () {
                          setState(() {
                            if (book != null) {
                              book.isStarred = !book.isStarred;
                              if (favoriteBooks.containsKey(book.category)) {
                                favoriteBooks[book.category]?.addAll({book.name: book.author});
                              } else {
                                favoriteBooks.addAll({book.category: {book.name: book.author}});
                              }
                              print(favoriteBooks);
                            }
                          });

                          final snackBar = SnackBar(
                            duration: const Duration(milliseconds: 800),
                            content: Text('Favoriler Listesine Eklendi.'),
                            action: SnackBarAction(
                              label: 'Geri Al',
                              onPressed: () {
                                if (book != null && favoriteBooks.containsKey(book.category)) {
                                  favoriteBooks[book.category]?.remove(book.name);
                                  if (favoriteBooks[book.category]?.isEmpty ?? true) {
                                    favoriteBooks.remove(book.category);
                                  }
                                }
                                print(favoriteBooks);
                              },
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                      ),
                    ],
                  ),
                  title: Text(book?.name ?? 'Unknown Book'),
                  subtitle: Text(
                    book?.author ?? 'Unknown Author',
                    style: TextStyle(
                      color: const Color(0xFFCE0D44).withOpacity(0.6),
                    ),
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
