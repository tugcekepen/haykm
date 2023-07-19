
import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../components/bottom_navi.dart';
import '../components/drawer_menu.dart';

class EventsPage extends StatefulWidget {
<<<<<<< HEAD
  const Even tsPage({super.key});
=======
  const EventsPage({Key? key}) : super(key: key);
>>>>>>> 76ca0fddb75b0bb8178caa2bd62acd74bceeb48a

  @override
  _EventsPage createState() => _EventsPage();
}

class _EventsPage extends State<EventsPage> {
  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();
  final int eventMaxLength = 50;

  List<Events> events = [
<<<<<<< HEAD
    Events("Stajyer Öğrencilerle Buluştuk", image: 'assets/images/sicakicecekler.jpg', description: "yaser kalkan asdasd"),
    Events("s", image: 'assets/images/mesrubat.jpg', description: "tuğçe keten"),
=======
    Events("Stajyer Öğrencilerle Buluştuk", image: 'assets/images/sicakicecekler.jpg', description: "Atakum Belediyesi, Samsun’da eğitim veren Ondokuz Mayıs Üniversitesi (OMÜ) Bilgisayar Mühendisliği Bölümü ile Samsun Üniversitesi (SAMÜ) Yazılım Mühendisliği bölümünde eğitim gören staj yeri sorunu yaşayan üniversite öğrencilerinin sorununa çözüm üretti."),
    Events("s", image: 'assets/images/mesrubat.jpg'),
>>>>>>> 76ca0fddb75b0bb8178caa2bd62acd74bceeb48a
    Events("Şok Şok Şok", image: 'assets/images/menemen.jpg')
    //İSTEDİĞİN KADAR EKLE
  ];

  void drawerOpen() {
    _scaffold.currentState?.openDrawer();
  }
<<<<<<< HEAD
  
=======
>>>>>>> 76ca0fddb75b0bb8178caa2bd62acd74bceeb48a

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
      body: ListView.builder(
        itemCount: events.length,
        itemBuilder: (BuildContext context, int index) {
          // Events event = events[index];
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
                  if (events[index].image != null)
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
                  if (events[index].description != null)
<<<<<<< HEAD
                    Text(events[index].getShortDescription(events[index].description!)),
                    Padding(
=======
                    if (events[index].description!.length > eventMaxLength)
                      Padding(
>>>>>>> 76ca0fddb75b0bb8178caa2bd62acd74bceeb48a
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          events[index].description!.substring(0, eventMaxLength),
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                  if (events[index].description != null)
                    if (events[index].description!.length <= eventMaxLength)
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          events[index].description!,
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                  if (events[index].description == null)
                    SizedBox(height: 5,)
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavi(context, 4),
    );
  }
}

class Events {
  final String title;
  final String? image;
  final String? description;

<<<<<<< HEAD
  Events(this.title, {this.image, this.description, });
  String getShortDescription(String? description) {
    final int maxLength = 10;
    if (description == null) return ''; // Eğer description boş ise boş bir string döndürüyoruz.
    if (description.length <= maxLength) {
      return description;
    } else {
      String shortDesc = description.substring(0, maxLength);
      if (shortDesc[maxLength - 1] != '\n') {
        int lastNewline = shortDesc.lastIndexOf('\n', maxLength - 1);
        shortDesc = shortDesc.substring(0, lastNewline + 1);
      }
      return shortDesc;
    }
  }
  }
=======
  Events(this.title, {this.image, this.description,});
}
>>>>>>> 76ca0fddb75b0bb8178caa2bd62acd74bceeb48a





class EventScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();
  final Events event;

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
          Center(
            child: Image.asset(
              event.image!,
              width: 300,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            event.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          if (event.description != null)
            Text(
                event.description!
            ),
        ],
      ),
    );
  }
}