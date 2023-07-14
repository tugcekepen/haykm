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
  final String? image;

  MenuItem(this.name, this.price, {this.image, this.subtitle});
}

final List<MenuCategory> categories = [
  MenuCategory(
    category: 'Kahvaltılık ve Çorbalar',
    image: 'assets/images/kahvalti.jpg',
    items: [
      MenuItem('Günün Çorbası', '25 TL'),
      MenuItem('Ekspres kahvaltı', '90 TL', subtitle: 'Bal, Reçel, Sarelle, Yeşil-Siyah Zeytin, Beyaz Peynir, Kaşar Peyniri, Yumurta, Domates, Salatalık, Tereyağ'),
      MenuItem('Menemen', '55 TL', subtitle: 'Domates, Sivri Biber, Yumurta, Tereyağ', image: 'assets/images/menemen.jpg'),
      MenuItem('Kuymak', '55 TL', subtitle: 'Mısır Unu, Tel Peynir, Tereyağ', image: 'assets/images/kuymak.jpg'),
      MenuItem('Sahanda Yumurta', '30 TL', subtitle: 'Yumurta, Tereyağ', image: 'assets/images/sahanda_yumurta.jpg'),
      MenuItem('Sucuklu Omlet', '45 TL', subtitle: 'Sucuk, Yumurta, Tereyağ', image: 'assets/images/sucuklu_omlet.png'),
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
  MenuCategory(category: 'Wrap Çeşitleri', image: 'assets/images/wrap.jpg', items: [
    MenuItem('Sezar Tavuk Wrap', '90 TL', subtitle: 'Tavuk Göğüs, Sivri Biber, Soğan, Mantar, Kaşar Peyniri, Domates, Salatalık, Cips, Maydanoz'),
    MenuItem('Etli Wrap', '140 TL', subtitle: 'Dana Antrikot, Sivri Biber, Soğan, Mantar, Tereyağ, Kaşar, Cips, Maydanoz, Havuç,Domates, Salatalık'),
    MenuItem('Vendura Wrap (Sebzeli)','80 TL', subtitle: 'Sivri Biber, Soğan, Mantar, Tereyağ, Kaşar Peyniri, Tortilla Ek. Cips, Kızartma Yağı, Maydanoz, Salatalık, Domates')
  ]),
  MenuCategory(category: 'Makarnalar', image: 'assets/images/makarna.jpeg', items: [
    MenuItem('Penne Arabiata', '65 TL', subtitle: 'Penne Arabiata, Acı Sos, Zeytin eşliğinde'),
    MenuItem('Fettuccine Alfredo', '80 TL', subtitle: 'Tavuk, Krema, Teriyaki Sos, Köy Biberi, Kapya Biber'),
    MenuItem('Tavuklu Noodle', '-', subtitle: 'Tavuk, Soya Filizi, Beyaz Lahana, Havuç'),
    MenuItem('Sebzeli Noodle', '-', subtitle: 'Soya Filizi, Beyaz Lahana, Havuç, Susam Yağı, Brokoli, Brüksel Lahana'),
    MenuItem('Etli Noodle', '-', subtitle: 'Spagetti, Makarna, Antriko, Dilimleri, Domates, Biber'),
  ]),
  MenuCategory(category: 'Salatalar', image: 'assets/images/salata.jpg', items: [
    MenuItem('Akdeniz Salata', '65 TL', subtitle: 'Akdeniz Yeşillikleri, Mısır, Zeytin, Cherry Domates, Krokan Ekmek, Beyaz Peynir'),
    MenuItem('Sezar Tavuk Salata', '85 TL', subtitle: 'Akdeniz Yeşillikleri, Havuç, Cherry Domates, Tavuk Parçaları, Sezar Sos'),
    MenuItem('Teriyaki Soslu Tavuklu Salata', '80 TL', subtitle: 'Akdeniz Yeşillikleri, Tavuk Parçaları, Havuç, Mısır, Teriyaki Sos'),
    MenuItem('Ton Balıklı Salata', '80 TL', subtitle: 'Akdeniz Yeşilliği, Ton Balığı, Mısır, Kapya, Cherry Domates'),
    MenuItem('Bahçe Salata', '50 TL', subtitle: 'Çeri Domates, salatalık, Lolorossa, Iceberg Marul, Mısır Tanesi, Kornişon Turşu, Tako'),
    MenuItem('Tavuklu Cevizli Salata', '80 TL', subtitle: 'Ceviz, Mısır Koçanı, Jalapeno Biber, Domates,Salatalık, Kroton, Limon ve Sos Eşliğinde'),
    MenuItem('Çoban Salata', '-', subtitle: 'Domates, Salatalık, Kuru Soğan, Sivri Biber, Sos'),
  ]),
  MenuCategory(category: 'Tavadaki Lezzetler', image: 'assets/images/tava_yemegi.jpg', items: [
    MenuItem('Bodrum Çökerme Etli', '-', subtitle: 'Bonfile Parçaları 180 gr, Domates Sos, Kibrik Patates, Yoğurt'),
    MenuItem('Bodrum Çökerme Tavuklu', '120 TL', subtitle: 'Tavuk Parçaları 200 gr, Domates Sos, Kibrit Patates, Yoğurt'),
    MenuItem('Çoban Kavurma Etli', '-', subtitle: 'Dana Eti 200 gr, Domates, Soğan, Köy Biberi, Kapya Biberi'),
    MenuItem('Çoban Kavurma Tavuklu', '130 TL', subtitle: 'Tavuk Göğüs 200 gr, Domates, Soğan, Köy Biberi, Kapya Biberi'),
    MenuItem('Piliç Bonbay', '110 TL', subtitle: 'Tavuk Göğüs 200 gr, Kuru Soğan, Krema, Köri, Sirke, Tuz, Karabiber'),
    MenuItem('Körü Soslu Tavuk', '120', subtitle: 'Tavuk Göğüs 200 gr, Kapya Biber, Köy Biberi, Köri, Domates, Kuşkonmaz'),
    MenuItem('Saray Sarma', '-', subtitle: 'Bonfile Dilimleri 180 gr, Kapya Biber, Köy Biberi, Tortilla Ekmeği, Dilim Mantar, Domates Sos, Tereyağ'),
    MenuItem('İzmir Kirede Kebabı', '-', subtitle: 'Dona Bonfile 180 gr, Kapya Biber, Roka, Kaşar Peyniri, Çeri Domates, Nar Ekşisi'),
    MenuItem('Dana Lokum', '-', subtitle: 'Dana Bonfile 180 gr, Kapya Biber, Roka, Kaşar Peyniri, Çeri Domates, Nar Ekşisi'),
    MenuItem('Tavuk Flambe', '160 TL', subtitle: 'Tavuk Göğüs 200 gr, Kuşkonmaz, Kibrit Patates, Çeri Domates'),
    MenuItem('Tavuk Qusedilla', '140 TL', subtitle: 'Tavuk Göğüs 200 gr, Tortilla Lavaşı, Kapya Biber, Kuru Soğan, Köy Biberi, Cheddar Peyniri'),
  ]),
  MenuCategory(category: 'Izgaralar', image: 'assets/images/izgara.jpg', items: [
    MenuItem('Akçaabat Köfte', '120 TL', subtitle: 'Akçaabat Köfte, Domates, Sivri Biber, Soğan, Bulgur Pilavı'),
    MenuItem('Tavuk Izgara', '110 TL', subtitle: 'Tavuk But, Domates, Kuru Soğan, SivriBiber'),
    MenuItem('T-Bone Izgara', '-', subtitle: 'T-Bone Eti, Soğan Halkası, Kuşkonmaz'),
    MenuItem('Antrikot Izgara', '-', subtitle: 'Dana Antrikot, Roka, Domates, Sos, Fettuccine Makarna'),
  ]),
  MenuCategory(category: 'Tatlılar', image: 'assets/images/tatli.jpg', items: [
    MenuItem('Dondurma', '-'),
    MenuItem('Cheesecake Çeşitleri', '-'),
    MenuItem('Malaga', '-'),
    MenuItem('Supangle', '-'),
    MenuItem('Kurabiye', '-'),
    MenuItem('Tuzlu Kuru Pasta', '-'),
  ]),
  MenuCategory(category: 'Meşrubatlar', image: 'assets/images/mesrubat.jpg', items: [
    MenuItem('Su 0.5', '5 TL'),
    MenuItem('Su 1,5', '10 TL'),
    MenuItem('Kola Kutu', '22 TL'),
    MenuItem('Fanta Kutu', '22 TL'),
    MenuItem('Gazoz Kutu', '22 TL'),
    MenuItem('Meyve Suyu Çeşitleri Kutu', '22 TL'),
    MenuItem('Sade Soda', '10 TL'),
    MenuItem('Meyveli Soda', '12 TL'),
    MenuItem('Ayran', '10 TL'),
  ]),
  //SICAK İÇECEKLER EKLENECEK
  MenuCategory(category: 'Sıcak İçecekler', image: 'assets/images/sicakicecekler.jpg', items: [
    MenuItem('Çay Bardak', '6 TL'),
    MenuItem('Çay Fincan', '10 TL'),
    MenuItem('Nescafe', '25 TL'),
    MenuItem('Türk Kahvesi', '22 TL'),
    MenuItem('Salep', '25 TL'),
    MenuItem('Cappucino', '25 TL'),
    MenuItem('Sıcak Çikolata', '25 TL'),
    MenuItem('Espresso', '25 TL'),
    MenuItem('Bitki Çayları', '12 TL'),
    MenuItem('Mocca', '25 TL'),
  ]),
];