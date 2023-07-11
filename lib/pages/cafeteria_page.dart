import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/pages/profile_page.dart';
import 'package:kutuphane_masa_takibi/pages/signin.dart';
import '../components/bottom_navi.dart';
import '../components/drawer_menu.dart';
import 'login.dart';

class CafeteriaPage extends StatefulWidget {
  @override
  _CafeteriaPage createState() => _CafeteriaPage();
}

class _CafeteriaPage extends State<CafeteriaPage>{

  final List<MenuCategory> categories = [
    MenuCategory(
      category: 'Kahvaltılık ve Çorbalar',
      image: 'assets/images/kahvalti.jpg',
      items: [
        MenuItem('Günün Çorbası', '25 TL'),
        MenuItem('Ekspres kahvaltı', '90 TL', subtitle: 'Bal, Reçel, Sarelle, Yeşil-Siyah Zeytin, Beyaz Peynir, Kaşar Peyniri, Yumurta, Domates, Salatalık, Tereyağ'),
        MenuItem('Menemen', '55 TL', subtitle: 'Domates, Sivri Biber, Yumurta, Tereyağ'),
        MenuItem('Kuymak', '55 TL', subtitle: 'Mısır Unu, Tel Peynir, Tereyağ'),
        MenuItem('Sahanda Yumurta', '30 TL', subtitle: 'Yumurta, Tereyağ'),
        MenuItem('Sucuklu Omlet', '45 TL', subtitle: 'Sucuk, Yumurta, Tereyağ'),
        MenuItem('Serpme Kahvaltı', '250 TL', subtitle: 'Beyaz Peynir, Kaşar Peyniri, Tulum Peyniri, Siyah Zeytin, Yeşil Zeytin, Vişne Reçeli, Bal, Tereyağ, Salam, Örgü Peyniri, Sarelle, Patates Cips, Sahanda Yumurta, Patates Kavurması, Kuymak, Sigara Böreği, Çay'),
      ],
    ),
    MenuCategory(
      category: 'Aparatifler',
      image: 'assets/images/aparatif.jpg',
      items: [
        MenuItem('Patates Cips', '40 TL', subtitle: 'Parmak Patates, Ketçap, Mayonez'),
        MenuItem('Kajun Baharatlı Patates', '40 TL', subtitle: 'Elma Dilim Patates, Kajun Baharatı, Ketçap, Mayonez'),
        MenuItem('Sosis Tabağı', '40 TL', subtitle: 'Sosis, Ketçap, Domates, Salatalık, Cips, Kız. Yağ.'),
        MenuItem('Tavuk Naget', '60 TL', subtitle: 'Tavuk Göğsü, Galeta Unu, Yumurta Sarısı'),
        MenuItem('Peynir Naget', '50 TL', subtitle: 'Kaşar Peyniri, Galeta Unu, Yumurta Sarısı'),
        MenuItem('Sigara Böreği', '40 TL', subtitle: 'Lor Peyniri, Yufka'),
        MenuItem('Karışık Sıcak Sepeti', '80 TL', subtitle: 'Sigara Böreği, Patates Cips, Sosis'),
        MenuItem('Kaşarlı Tost', '50 TL', subtitle: 'Kaşar Peyniri, Tereyağ'),
        MenuItem('Sucuklu Tost', '50 TL', subtitle: 'Sucuk, Tereyağ'),
        MenuItem('Karışık Tost', '55 TL', subtitle: 'Kaşar Peyniri, Sucuk, Tereyağ'),
      ],
    ),
    MenuCategory(
      category: 'Burgerler',
      image: 'assets/images/burger.jpeg',
      items: [
        MenuItem('Hamburger', '80 TL', subtitle: 'Hamburger Ekmeği, Hamburger Köftesi, Marul, Kornişon Turşu, Patates Cips'),
        MenuItem('Cheese Burger', '85 TL', subtitle: 'Hamburger Ekmeği, Hamburger Köftesi, Cheddar Peyniri, Marul, Kornişon Turşu, Patates Cips'),
        MenuItem('Duble Burger', '110 TL', subtitle: 'Hamburger Ekmeği, Hamburger Köftesi, Marul, Kornişon Turşu, Patates Cips'),
      ],
    ),
  ];

  @override
  GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      drawer: DrawerMenu(),
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Hasan Ali Yücel Kültür Merkezi",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor),
              ),
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            _scaffold.currentState?.openDrawer();
          },
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
            onPressed: () {
              if (!isLogin!) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInPage(),
                  ),
                );
              } else if (isLogin!) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              }
            },
            icon: Icon(Icons.person),
          ),
        ],
      ),
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

class MenuCategory {
  final String category;
  final String image;
  final List<MenuItem> items;

  const MenuCategory({required this.category, required this.image, required this.items});
}

class MenuItem {
  final String name;
  final String price;
  final String? subtitle;

  MenuItem(this.name, this.price, {this.subtitle});
}