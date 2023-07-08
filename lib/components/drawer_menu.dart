import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/pages/login.dart';
import 'package:kutuphane_masa_takibi/pages/profile_page.dart';
import 'package:kutuphane_masa_takibi/pages/signin.dart';
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
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30)),
      ),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              child: InfoCard(
                title: "Hasan Ali Yücel Kültür Merkezi",
                subtitle: "Gençlik Bilim ve Sanat Merkezi",
              ),
            ),
            DrawerListTitle(title: "Siz",),
            DrawerListItem(
              icon: Icons.person_outline,
              listTitle: "Hesabım",
              listFunction: () {
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
            ),
            DrawerListItem(
              icon: Icons.favorite_outline,
              listTitle: "Favori Kitaplarım",
              listFunction: () {
                if (!isLogin!) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignInPage(),
                    ),
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
                      builder: (context) => SignInPage(),
                    ),
                  );
                }
              },
            ),
            DrawerListTitle(title: "Merkezimiz",),
            DrawerListItem(
              icon: Icons.info_outline,
              listTitle: "Hakkımızda",
              listFunction: () {  },
            ),
            DrawerListItem(
                listTitle: "İletişim",
                icon: Icons.mail_outline,
                listFunction: () {  }
            ),
            DrawerListItem(
              icon: Icons.credit_card_outlined,
              listTitle: "AtaKart Başvurusu",
              listFunction: () {  },
            ),
            DrawerListItem(
                listTitle: "Sık Sorulan Sorular",
                icon: Icons.question_mark_outlined,
                listFunction: () {  }
            ),
            Padding(
              padding: const EdgeInsets.only(),
              child: Divider(
                color: Theme.of(context).dividerColor,
                height: 2,
              ),
            ),
            DrawerListItem(
                listTitle: "Çıkış Yap",
                icon: Icons.exit_to_app_outlined,
                listFunction: () {  }
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
      title: Text(listTitle, style: TextStyle(fontSize: 15),),
      onTap: listFunction,
    );
  }
}

class DrawerListTitle extends StatelessWidget {
  const DrawerListTitle({
    super.key, this.title,
  });

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(),
          child: Divider(
            color: Theme.of(context).dividerColor,
            height: 2,
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 25, top: 16, bottom: 16, right: 25),
          child: Text(
            title!.toUpperCase(),
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: Theme.of(context).primaryColor.withOpacity(0.5), fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(),
          child: Divider(
            color: Theme.of(context).dividerColor,
            height: 2,
          ),
        ),
      ],
    );
  }
}
