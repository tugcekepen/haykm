import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../components/drawer_menu.dart';
import '../data/mybooks.dart';
import '../inner_pages/to_take_list.dart';

class MyBooksPage extends StatefulWidget {
  const MyBooksPage({Key? key}) : super(key: key);

  @override
  State<MyBooksPage> createState() => _MyBooksState();
}

class _MyBooksState extends State<MyBooksPage> {
  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  int _current = 0;

  void onPageChanged(int index, CarouselPageChangedReason reason) {
    setState(() {
      _current = index;
    });
  }

  final List<Widget> imageSliders = imgList.entries
      .map((entry) => Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              child: Stack(
                children: <Widget>[
                  Image.asset(entry.key, fit: BoxFit.fitHeight),
                  Positioned(
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xFFCE0D44),
                            Color.fromARGB(0, 0, 0, 0)
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      padding: const EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      child: Text(
                        entry.value,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ))
      .toList();

  final List<String> imagePaths = imgList.keys.toList();

  String getDeliveryDate(String imagePath) {
    String deliveryDate = "";
    if (imagePath.contains("livaneli")) {
      deliveryDate = "28.07.2023";
    } else if (imagePath.contains("hayvan_ciftligi")) {
      deliveryDate = "05.08.2023";
    } else if (imagePath.contains("kucuk_prens")) {
      deliveryDate = "03.08.2023";
    } else if (imagePath.contains("siyasi_dinler")) {
      deliveryDate = "29.07.2023";
    }
    return deliveryDate;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffold,
      drawer: DrawerMenu(),
      appBar: const CustomAppBar(
          title: "Kitaplarım", icon: Icons.arrow_back_ios_new_outlined),
      body: ListView(shrinkWrap: true, children: [
        Padding(
          padding: EdgeInsets.only(left: 15.0, bottom: 15, top: 8),
          child: Text(
            "Ödünç aldıklarım".toUpperCase(),
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Divider(
          color: Theme.of(context).dividerColor,
          height: 2,
        ),
        Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            width: MediaQuery.of(context).size.width * 0.45,
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 1.5,
                viewportFraction: 0.45,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                initialPage: 2,
                autoPlay: true,
                onPageChanged: onPageChanged,
              ),
              items: imageSliders,
            )),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text(
            "Teslim tarihi : ${getDeliveryDate(imagePaths[_current])}",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Theme.of(context).primaryColor.withOpacity(0.7),
              fontSize: 15.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 5,),
        Divider(
          color: Theme.of(context).dividerColor,
          height: 2,
        ),
        ListTile(
          trailing: Icon(Icons.arrow_forward_ios),
          title: const Text(
            "ALINACAKLAR LİSTESİ",
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ToTakeList()));
          },
        ),
        Divider(
          color: Theme.of(context).dividerColor,
          height: 2,
        ),
      ]),
    );
  }
}
