import 'package:flutter/material.dart';

import '../pages/login.dart';
import '../pages/profile_page.dart';
import '../pages/signin.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    Key? key,
    GlobalKey<ScaffoldState>? scaffold,
    required this.title,
    required this.icon,
    this.onIconPressed,
  }) :  super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback? onIconPressed;

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      flexibleSpace: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              title,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor),
            ),
          ),
        ),
      ),
      leading: IconButton(
        onPressed: () {
          if(icon==Icons.menu){
            if(onIconPressed != null){
              onIconPressed!();
            }
          }
          else if (icon==Icons.arrow_back_ios_new_outlined){
            if(onIconPressed != null){
              onIconPressed!();
              Navigator.pop(context);
            }else{
              Navigator.pop(context);
            }
          }
        },
        icon: Icon(icon),
      ),
      actions: [
        if(icon==Icons.menu)
          IconButton(
            padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
            onPressed: () {
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
            icon: Icon(Icons.person),
          ),
      ],
    );
  }
}