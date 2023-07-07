import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/home.dart';

TextEditingController _userNameController = TextEditingController();
TextEditingController _passwordController = TextEditingController();

bool _isLogin = false;
bool isLogin = _isLogin;

class SignInPage extends StatefulWidget {
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _usernameFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Klavye odaklıyken başka bir yere tıklandığında klavyeyi kapat
        _usernameFocusNode.unfocus();
        _passwordFocusNode.unfocus();
      },
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Üye Ol',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40.0),
              TextFormField(
                controller: _userNameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Kullanıcı adınızı giriniz.';
                  }
                  return null;
                },
                focusNode: _usernameFocusNode,
                decoration: InputDecoration(
                  labelText: 'Kullanıcı Adı',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFCE0D44)),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                controller: _passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Şifrenizi giriniz.';
                  }
                  return null;
                },
                focusNode: _passwordFocusNode,
                decoration: InputDecoration(
                  labelText: 'Şifre',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFCE0D44)),
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(height: 40.0),
              ElevatedButton(
                onPressed: () {
                  // Üye ol butonuna tıklandığında yapılacak işlemler
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogInPage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  shape: StadiumBorder(),
                ),
                child: Text(
                  'Üye Ol',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
              SizedBox(height: 20.0),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LogInPage(),
                    ),
                  );
                },
                child: Text(
                  'Zaten üye misiniz? Giriş Yap',
                  style: TextStyle(
                    fontSize: 16.0,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LogInPage extends StatefulWidget {
  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _usernameFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Klavye odaklıyken başka bir yere tıklandığında klavyeyi kapat
        _usernameFocusNode.unfocus();
        _passwordFocusNode.unfocus();
      },
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Giriş Yap',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40.0),
              TextFormField(
                controller: _userNameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Kullanıcı adınızı giriniz.';
                  }
                  return null;
                },
                focusNode: _usernameFocusNode,
                decoration: InputDecoration(
                  labelText: 'Kullanıcı Adı',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFCE0D44)),
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              TextFormField(
                controller: _passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Şifrenizi giriniz.';
                  }
                  return null;
                },
                focusNode: _passwordFocusNode,
                decoration: InputDecoration(
                  labelText: 'Şifre',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFCE0D44)),
                  ),
                ),
                obscureText: true,
              ),
              SizedBox(height: 40.0),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isLogin = true;
                  });
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyHomePage(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  shape: StadiumBorder(),
                ),
                child: Text(
                  'Giriş Yap',
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
