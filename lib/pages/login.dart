import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/components/app_bar.dart';
import 'package:kutuphane_masa_takibi/pages/home_page.dart';
import 'package:kutuphane_masa_takibi/pages/signin.dart';

import '../inner_pages/forgot_password.dart';

TextEditingController _userNameControllerL = TextEditingController();
TextEditingController _passwordControllerL = TextEditingController();

bool _isPasswordVisibleL = false;
bool? _isLogin = false;
bool? isLogin = _isLogin;

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  final _formKey = GlobalKey<FormState>();

  final _usernameFocusNode = FocusNode();
  final _passwordFocusNode = FocusNode();

  @override
  void dispose() {
    _usernameFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  void _handleTap() {
    // Odaktan çıkma işlemleri burada gerçekleştirilecek
    FocusScope.of(context).unfocus(); // İmleci kaybetmek için odaktan çıkar
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Scaffold(
        appBar: CustomAppBar(
            title: "Hasan Ali Yücel Kültür Merkezi",
            icon: Icons.arrow_back_ios_new_outlined,
            onIconPressed: toDeleteFieldLogIn),
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
                    const Center(
                      child: Text(
                        "Kullanıcı Adı veya E-Posta ile Giriş Yapın",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    buildTextField(
                      focusNode: _usernameFocusNode,
                      controller: _userNameControllerL,
                      labelText: 'Kullanıcı Adı / E-Mail',
                      prefixIcon: Icons.person_outline,
                      maxLength: 20,
                    ),
                    const SizedBox(height: 20.0),
                    buildPasswordFieldL(
                      focusNode: _passwordFocusNode,
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
                    const SizedBox(height: 10.0),
                    TextButton(
                      child: const Text("Şifremi Unuttum"),
                      onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPassword())),
                    ),
                    const SizedBox(height: 30.0),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          setState(() {
                            _isLogin = true;
                            isLogin = _isLogin;
                          });

                          toDeleteFieldLogIn();
                          print(_isLogin);
                          print(isLogin);

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyHomePage(),
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
                        elevation: 8,
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        shape: StadiumBorder(),
                      ),
                      child: Text(
                        'Giriş',
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                    SizedBox(height: 45.0),
                    Column(
                      children: [
                        Divider(
                          height: 2,
                          color: Theme.of(context).dividerColor,
                        ),
                        SizedBox(height: 12.0),
                        Text("Sosyal Hesaplar ile Giriş Yap"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.mark_as_unread)),
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.facebook)),
                      ],
                    ),
                    SizedBox(height: 5.0),
                    Divider(
                      height: 2,
                      color: Theme.of(context).dividerColor,
                    ),
                    SizedBox(height: 20.0),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignInPage(),
                          ),
                        );
                      },
                      child: Text(
                        'Hesabınız yok mu? Üye Ol',
                        style: TextStyle(
                          fontSize: 16.0,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void toDeleteFieldLogIn() {
    _userNameControllerL.text = '';
    _passwordControllerL.text = '';
  }
}

Widget buildTextField({
  required TextEditingController controller,
  required String labelText,
  IconData? prefixIcon,
  int? maxLength,
  FocusNode? focusNode,
}) {
  return TextFormField(
    controller: controller,
    focusNode: focusNode,
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
      prefixIcon: Icon(prefixIcon),
      counterText: '',
    ),
    maxLength: maxLength,
  );
}

Widget buildPasswordFieldL({
  required TextEditingController controller,
  required String labelText,
  IconData? suffixIcon,
  int? maxLength,
  required VoidCallback onPressedSuffixIcon,
  FocusNode? focusNode,
}) {
  return TextFormField(
    controller: controller,
    focusNode: focusNode,
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
