import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/components/app_bar.dart';
import 'package:kutuphane_masa_takibi/components/drawer_menu.dart';
import 'package:kutuphane_masa_takibi/pages/login.dart';
import 'package:kutuphane_masa_takibi/pages/signin.dart';

import 'codeVerification.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});

  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerMenu(),
      appBar: CustomAppBar(
          title: "Şifremi Unuttum",
          icon: Icons.arrow_back_ios_new_outlined,
          onIconPressed: () {}),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            height: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                border: Border.all(),
                color: Theme.of(context).primaryColor.withOpacity(0.1)),
            child: Padding(
              padding: const EdgeInsets.only(
                  bottom: 80, right: 20, left: 20, top: 20),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      "Kurtarma E-mail adresini girin ve size bağlantı gönderelim",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "E-mail"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CodeVerification()));
                        },
                        child: Text("Gönder")),
                  ),
                  Divider(
                    height: 10,
                    color: Theme.of(context).dividerColor,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInPage()));
                    },
                    child: Text("Hesabınız yok mu ? Hesap oluştur"),
                  ),
                  Divider(
                    height: 10,
                    color: Theme.of(context).dividerColor,
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
