import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/pages/profile_page.dart';
import 'package:kutuphane_masa_takibi/pages/signin.dart';
import '../components/app_bar.dart';
import '../components/bottom_navi.dart';
import '../components/drawer_menu.dart';
import '../data/Menu.dart';
import 'login.dart';

class CafeteriaPage extends StatefulWidget {
  const CafeteriaPage({super.key});

  @override
  _CafeteriaPage createState() => _CafeteriaPage();
}

class _CafeteriaPage extends State<CafeteriaPage>{
  GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  void drawerOpen() {
    _scaffold?.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      drawer: DrawerMenu(),
      appBar: CustomAppBar(scaffold: _scaffold, title: "Hasan Ali Yücel Kültür Merkezi", icon: Icon(Icons.menu), onIconPressed: drawerOpen),
      body: GridView.builder(
        padding: EdgeInsets.all(16.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CategoryItemsScreen(category: categories[index]),
                ),
              );
            },
            child: Card(
              elevation: 2.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                      child: Image.asset(
                        categories[index].image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      categories[index].category,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavi(context, 2),
    );
  }
}

class CategoryItemsScreen extends StatelessWidget {
  final MenuCategory category;

  const CategoryItemsScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.category, style: TextStyle(color: Theme.of(context).primaryColor),),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, top: 5, right: 5),
        child: ListView.builder(
          itemCount: category.items.length,
          itemBuilder: (context, index) => ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(category.items[index].name),
                Text(
                  category.items[index].price,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            subtitle: Text(category.items[index].subtitle ?? ''),
          ),
        ),
      ),
    );
  }
}
