import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class ArtDesign extends StatefulWidget {
  const ArtDesign({super.key});

  @override
  State<ArtDesign> createState() => _ArtDesignState();
}

class _ArtDesignState extends State<ArtDesign> {
  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();

  void drawerOpen() {
    _scaffold.currentState?.openDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: CustomAppBar(
          scaffold: _scaffold,
          title: "Sanat Tasarım",
          icon: Icons.arrow_back_ios_new_outlined,
          ),
      body: const SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text('Alçı Rölyof(408)'),
            Text('Heykel Yapımı(400)'),
            Text('Plastik Sanatlar Modelcisi(1432)'),
            Text('Özel Gün ve Nikah Şekeri Hazırlama(160)'),
            Text('Plastik Sanatlar Toparlayıcısı(776)'),
            Text('Turistik ve Hediyelik Eşya Yapımı(128)'),
            Text('Resim Sanat Eğitimi(368)'),
            Text("Gravür(320)"),
            Text("Sanatsal Mozaik(275)"),
            Text("İpek Kozası El Ürünleri(128)"),
            Text("Sepet Örücülüğü"),
          ],
        ),
      ),
    );
  }
}
