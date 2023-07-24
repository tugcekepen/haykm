import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../components/bottom_navi.dart';
import '../components/drawer_menu.dart';
import '../data/library.dart';
import '../inner_pages/library_category_detail_page.dart';
import '../models/book.dart';

class LibraryPage extends StatefulWidget {
  const LibraryPage({super.key});

  @override
  _LibraryPage createState() => _LibraryPage();
}

class _LibraryPage extends State<LibraryPage> {
  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    allBooks = getAllBooks();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      drawer: const DrawerMenu(),
      appBar: CustomAppBar(
          scaffold: _scaffold,
          title: "Kütüphane",
          icon: Icons.menu,
          onIconPressed: () {
            setState(() {
              _scaffold.currentState?.openDrawer();
            });
          }),
      body: ListView(
        children: [
          const ListTile(
            title: Text(
              'KATEGORİLER',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            height: 2,
            color: Theme.of(context).dividerColor,
          ),
          const SizedBox(
            height: 13,
          ),
          const LibraryCategoryButton(
            title: "Dünya Klasikleri",
          ),
          const LibraryCategoryButton(
            title: "Kişisel Gelişim",
          ),
          const LibraryCategoryButton(
            title: "Roman",
          ),
          const LibraryCategoryButton(
            title: "Korku-Gerilim",
          ),
          const LibraryCategoryButton(
            title: "Fantastik",
          ),
          const LibraryCategoryButton(
            title: "Biyografi",
          ),
          const LibraryCategoryButton(
            title: "Mitolojiler",
          ),
          const LibraryCategoryButton(
            title: "Söyleşi-Röportaj",
          ),
          const LibraryCategoryButton(
            title: "Tarih",
          ),
          const LibraryCategoryButton(
            title: "Polisiye",
          ),
          const LibraryCategoryButton(
            title: "Şiir",
          ),
        ],
      ),
      bottomNavigationBar: BottomNavi(context, 3),
    );
  }
}

class LibraryCategoryButton extends StatelessWidget {
  final String title;

  const LibraryCategoryButton({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: ElevatedButton(
          style:
              ElevatedButton.styleFrom(elevation: 5, fixedSize: const Size(330, 40)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CategoryDetailPage(
                  category: title,
                  books: libraryList[title],
                ),
              ),
            );
          },
          child: Text(
            title,
            style: const TextStyle(fontSize: 15),
          ),
        ),
      ),
    );
  }
}

List<Book> allBooks = [];

List<Book> getAllBooks() {
  List<Book> allBooks = [];
  libraryList.forEach((category, books) {
    books.forEach((name, author) {
      allBooks.add(Book(name, author, category));
    });
  });
  return allBooks;
}

List<Book> getFilteredBooks(String searchText) {
  return allBooks
      .where((book) =>
  book.name.toLowerCase().contains(searchText.toLowerCase()) ||
      book.author.toLowerCase().contains(searchText.toLowerCase()))
      .toList();
}