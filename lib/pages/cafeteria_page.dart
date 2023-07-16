import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../components/bottom_navi.dart';
import '../components/drawer_menu.dart';
import '../data/atakafe_menu.dart';

class CafeteriaPage extends StatefulWidget {
  const CafeteriaPage({super.key});

  @override
  _CafeteriaPage createState() => _CafeteriaPage();
}

class _CafeteriaPage extends State<CafeteriaPage>{
  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      drawer: const DrawerMenu(),
      appBar: CustomAppBar(scaffold: _scaffold, title: "AtaKafe Menü", icon: Icons.menu, onIconPressed: (){
        setState(() {
          _scaffold.currentState?.openDrawer();
        });
      }),
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
              elevation: 5.0,
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
                      style: const TextStyle(
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

class CategoryItemsScreen extends StatefulWidget {
  final MenuCategory category;

  const CategoryItemsScreen({super.key, required this.category});

  @override
  _CategoryItemsScreenState createState() => _CategoryItemsScreenState();
}

class _CategoryItemsScreenState extends State<CategoryItemsScreen> {
  int selectedItemIndex = -1;
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: widget.category.category, icon: Icons.arrow_back_ios_new_outlined),
      body: Padding(
        padding: const EdgeInsets.only(left: 5, top: 5, right: 5),
        child: ListView.builder(
          itemCount: widget.category.items.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  if (selectedItemIndex == index) {
                    selectedItemIndex = -1;
                    isExpanded = false;
                  } else {
                    selectedItemIndex = index;
                    isExpanded = true;
                  }
                });
              },
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFF3F3),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    margin: EdgeInsets.only(bottom: 5),
                    padding: EdgeInsets.all(3),
                    child: ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(widget.category.items[index].name),
                          Text(
                            widget.category.items[index].price,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      subtitle: Text(widget.category.items[index].subtitle ?? ''),
                    ),
                  ),
                  if( widget.category.items[index].image != null)
                    AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      width: selectedItemIndex == index && isExpanded ? MediaQuery.of(context).size.width : 0.0,
                      height: selectedItemIndex == index && isExpanded ? 200.0 : 0.0,
                      child: Image.asset(
                        widget.category.items[index].image!,
                        fit: BoxFit.cover,
                        height: 10,
                      ),
                    ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
