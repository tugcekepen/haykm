import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../components/bottom_navi.dart';
import '../components/drawer_menu.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  _EventsPage createState() => _EventsPage();
}

class _EventsPage extends State<EventsPage>{
  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  void drawerOpen() {
    _scaffold.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      drawer: DrawerMenu(),
      appBar: CustomAppBar(scaffold: _scaffold, title: "Etkinlikler",icon: Icons.menu, onIconPressed: drawerOpen),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Text("Etkinlikler"),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavi(context, 4),
    );
  }


}