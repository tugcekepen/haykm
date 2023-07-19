import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/drawer_pages/about_us_page.dart';
import 'package:kutuphane_masa_takibi/drawer_pages/suggestion_complaints.dart';
import 'package:kutuphane_masa_takibi/pages/login.dart';
import 'package:kutuphane_masa_takibi/drawer_pages/mybooks_page.dart';
import 'package:kutuphane_masa_takibi/pages/profile_page.dart';
import '../pages/home_page.dart';
import 'info_card.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), bottomRight: Radius.circular(30)),
      ),
      child: SafeArea(
        child: ListView(
          shrinkWrap: true,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: InfoCard(
                title: "Hasan Ali Yücel Kültür Merkezi",
                subtitle: "Gençlik Bilim ve Sanat Merkezi",
              ),
            ),
            DrawerListTitle(
              title: "Siz",
            ),
            DrawerListItem(
              icon: Icons.person_outline,
              listTitle: "Hesabım",
              listFunction: () {
                if (!isLogin!) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogInPage(),
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
            ),
            DrawerListItem(
              icon: Icons.favorite_outline,
              listTitle: "Favori Kitaplarım",
              listFunction: () {
                if (!isLogin!) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogInPage(),
                    ),
                  );
                } else if (isLogin!) {}
              },
            ),
            DrawerListItem(
              icon: Icons.bookmark_border,
              listTitle: "Kitaplarım",
              listFunction: () {
                if (!isLogin!) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogInPage(),
                    ),
                  );
                } else if (isLogin!) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyBooksPage()),
                  );
                }
              },
            ),
            DrawerListItem(
              icon: Icons.book_outlined,
              listTitle: "Kurslarım",
              listFunction: () {
                if (!isLogin!) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogInPage(),
                    ),
                  );
                } else if (isLogin!) {}
              },
            ),
            DrawerListTitle(
              title: "Merkezimiz",
            ),
            DrawerListItem(
              icon: Icons.info_outline,
              listTitle: "Hakkımızda",
              listFunction: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutUsPage()),
                );
              },
            ),
            DrawerListItem(
              icon: Icons.credit_card_outlined,
              listTitle: "AtaKart Başvurusu",
              listFunction: () {},
            ),
            DrawerListItem(
                listTitle: "Sık Sorulan Sorular",
                icon: Icons.question_mark_outlined,
                listFunction: () {}),
            DrawerListItem(
                listTitle: "Öneri ve Şikayetleriniz",
                icon: Icons.question_answer_outlined,
                listFunction: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SuggestionPage()),
                  );
                }),
            Divider(
              color: Theme.of(context).dividerColor,
              height: 2,
            ),
            if (isLogin!)
              DrawerListItem(
                  listTitle: "Çıkış Yap",
                  icon: Icons.exit_to_app_outlined,
                  listFunction: () {
                    setState(() {
                      isLogin = false;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyHomePage()),
                    );
                  }),
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Bize Ulaşabilirsiniz",
                    style: TextStyle(color: Colors.grey[700]!.withOpacity(0.7)),
                  ),
                  Text(
                    "05551112233",
                    style: TextStyle(color: Colors.grey[700]!.withOpacity(0.8)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerListItem extends StatelessWidget {
  const DrawerListItem({
    Key? key,
    required this.listTitle,
    required this.icon,
    required this.listFunction,
  }) : super(key: key);

  final String listTitle;
  final IconData icon;
  final void Function() listFunction;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, size: 25, color: Colors.grey),
      title: Text(
        listTitle,
        style: TextStyle(fontSize: 15),
      ),
      onTap: listFunction,
    );
  }
}

class DrawerListTitle extends StatelessWidget {
  const DrawerListTitle({
    super.key,
    this.title,
  });

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Theme.of(context).dividerColor,
          height: 2,
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 25, top: 16, bottom: 16, right: 25),
          child: Text(
            title!.toUpperCase(),
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).primaryColor.withOpacity(0.5),
                fontWeight: FontWeight.bold),
          ),
        ),
        Divider(
          color: Theme.of(context).dividerColor,
          height: 2,
        ),
      ],
    );
  }
}
