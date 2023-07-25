import 'package:flutter/material.dart';
import '../pages/cafeteria_page.dart';
import '../pages/courses_page.dart';
import '../pages/events_page.dart';
import '../pages/home_page.dart';
import '../pages/library_page.dart';

Widget BottomNavi(BuildContext context, int currentIndex) {
  return BottomNavigationBar(
    showSelectedLabels: false,
    showUnselectedLabels: false,
    elevation: 8,
    currentIndex: currentIndex,
    items: const [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          color: Color(0xFFF56A77),
          size: 20,
        ),
        activeIcon: Icon(
          Icons.home,
          color: Color(0xFFCE0D44),// Aktif olduğunda kullanılacak renk
          size: 30,
        ),
        label: "Ana Sayfa",
      ),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.play_lesson,
            color: Color(0xFFF56A77),
            size: 20,
          ),
          activeIcon: Icon(
            Icons.play_lesson,
            color: Color(0xFFCE0D44),
            size: 30,
          ),
          label: "Kurslar"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.restaurant_menu,
            color: Color(0xFFF56A77),
            size: 20,
          ),
          activeIcon: Icon(
            Icons.restaurant_menu,
            color: Color(0xFFCE0D44),
            size: 30,
          ),
          label: "Kafe Menü"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.my_library_books,
            color: Color(0xFFF56A77),
            size: 20,
          ),
          activeIcon: Icon(
            Icons.my_library_books,
            color: Color(0xFFCE0D44),
            size: 30,
          ),
          label: "Kütüphane"),
      BottomNavigationBarItem(
          icon: Icon(
            Icons.event,
            color: Color(0xFFF56A77),
            size: 20,
          ),
          activeIcon: Icon(
            Icons.event,
            color: Color(0xFFCE0D44),
            size: 30,
          ),
          label: "Etkinlikler"),
    ],
    onTap: (currentIndex) {
        switch (currentIndex) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CoursesPage()),
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CafeteriaPage()),
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LibraryPage()),
            );
            break;
          case 4:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EventsPage()),
            );
            break;
        }
    },
  );
}
