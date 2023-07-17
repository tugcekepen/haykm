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
    Events("s", image: 'assets/images/mesrubat.jpg'),
    Events("Şok Şok Şok", image: 'assets/images/menemen.jpg')
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
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (BuildContext context, int index){
          Events event = events[index];
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => EventScreen(event: events[index])),
              );
            },
            title: Center(
              child: Column(
                children: [
                  if(events[index].image != null)
                    Image.asset(
                        events[index].image!,
                            width: 300,
                            height: 250,
                            fit: BoxFit.cover,
                    ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        events[index].title,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
=======
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
>>>>>>> 29493990d023dc5fabddbb29da740c3703119bee
      bottomNavigationBar: BottomNavi(context, 4),
    );
  }
}

class Events {
  final String title;
  final String? image;

  Events(this.title, {this.image});
<<<<<<< HEAD
}





class EventScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();  final Events event;

  EventScreen({super.key, required this.event});

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
          title: "Haberin Olsun",
          icon: Icons.menu,
          onIconPressed: drawerOpen),
      body: Column(
        children: [
          Text(event.title),
        ],
      ),
    );
  }
=======
>>>>>>> 29493990d023dc5fabddbb29da740c3703119bee
}