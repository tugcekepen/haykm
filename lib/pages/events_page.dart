import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../components/bottom_navi.dart';
import '../components/drawer_menu.dart';

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  _EventsPage createState() => _EventsPage();
}

class _EventsPage extends State<EventsPage> {
  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  List<Events> events = [
    Events("Stajyer Öğrencilerle Buluştuk", image: 'assets/images/sicakicecekler.jpg'),
    Events("s", image: 'assets/images/meşrubatlar.jpg'),
    //İSTEDİĞİN KADAR EKLE
  ];

  void drawerOpen() {
    _scaffold.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      drawer: DrawerMenu(),
      appBar: CustomAppBar(
          scaffold: _scaffold,
          title: "Etkinlikler",
          icon: Icons.menu,
          onIconPressed: drawerOpen),
<<<<<<< HEAD
      //body: ListView.builder(
      //  itemCount: events.length,
      //  itemBuilder: (BuildContext context, int index){
          //Events event = Events(event[index]);
          //return ListTile(
          //  title: Center(
          //    child: Text(event.title), // Etkinlik başlığını görüntüleyin
          //  ),
          //  leading: event.image != null ? Row(
          //      children: [
          //        Image.network(event.image!),
          //      ]

          //  ) : null,
      //    );
      //  },
      //),
=======
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (BuildContext context, int index){
          Events event = Events(event[index]);
          return ListTile(
            title: Center(
              child: Text(event.title), // Etkinlik başlığını görüntüleyin
            ),
            leading: event.image != null ? Row(
              children: [
                Image.network(event.image!),
              ]

            ) : null,
          );
        },
      ),
>>>>>>> b9207a92f2cece9a8cc850f853a6cb44cdc0cc61
      bottomNavigationBar: BottomNavi(context, 4),
    );
  }
}

class Events {
  final String title;
  final String? image;

  Events(this.title, {this.image});
}