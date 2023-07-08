import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/pages/home_page.dart';
import 'package:kutuphane_masa_takibi/pages/signin.dart';

TextEditingController _userNameControllerL = TextEditingController();
TextEditingController _passwordControllerL = TextEditingController();

bool _isPasswordVisibleL = false;
bool? _isLogin = false;
bool? isLogin = _isLogin;

class LogInPage extends StatefulWidget {
  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _formKey = GlobalKey<FormState>();

  final _usernameFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    final double imageSize = MediaQuery.of(context).size.width * 0.23;
    return GestureDetector(
      onTap: () {
        _usernameFocusNode.unfocus();
        _passwordFocusNode.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          flexibleSpace: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Hasan Ali Yücel Kültür Merkezi",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          leading: IconButton(
            onPressed: () {
              _userNameControllerL.text = '';
              _passwordControllerL.text = '';
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            },
            icon: Icon(Icons.arrow_back_ios_new_outlined),
          ),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/anonim_person.jpg',
                          width: imageSize,
                          height: imageSize,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 35.0),
                    buildTextField(
                      controller: _userNameControllerL,
                      labelText: 'Kullanıcı Adı',
                      prefixIcon: Icons.person_outline,
                      maxLength: 20,
                    ),
                    SizedBox(height: 20.0),
                    buildPasswordFieldL(
                      controller: _passwordControllerL,
                      labelText: 'Şifre',
                      suffixIcon: _isPasswordVisibleL
                          ? Icons.visibility
                          : Icons.visibility_off,
                      onPressedSuffixIcon: () {
                        setState(() {
                          _isPasswordVisibleL = !_isPasswordVisibleL;
                        });
                      },
                      maxLength: 8,
                    ),
                    SizedBox(height: 40.0),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            _isLogin = true;
                            isLogin = _isLogin;
                          });

                          _userNameControllerL.text = '';
                          _passwordControllerL.text = '';
                          print(_isLogin);
                          print(isLogin);

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MyHomePage(),
                            ),
                          );
                        } else {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12)),
                                title: Text('Hata'),
                                content: Text('Zorunlu alanları doldurun.'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Text('Tamam'),
                                  ),
                                ],
                              );
                            },
                          );
                        }
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
          ),
        ),
      ),
    );
  }
}

Widget buildPasswordFieldL({
  required TextEditingController controller,
  required String labelText,
  IconData? suffixIcon,
  int? maxLength,
  required VoidCallback onPressedSuffixIcon,
}) {
  return TextFormField(
    controller: controller,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return '$labelText giriniz.';
      }
      return null;
    },
    decoration: InputDecoration(
      labelText: labelText,
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFFCE0D44)),
      ),
      prefixIcon: Icon(Icons.password),
      suffixIcon: GestureDetector(
        onTap: onPressedSuffixIcon,
        child: Icon(suffixIcon),
      ),
      counterText: '',
    ),
    maxLength: maxLength,
    obscureText: !_isPasswordVisibleL,
  );
}
