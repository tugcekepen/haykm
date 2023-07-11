import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/components/app_bar.dart';
import 'package:kutuphane_masa_takibi/pages/login.dart';

TextEditingController _userNameController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
TextEditingController _tcnoController = TextEditingController();
TextEditingController _adSoyadController = TextEditingController();
TextEditingController _emailController = TextEditingController();

bool _isPasswordVisible = false;

class SignInPage extends StatefulWidget {
  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formKey = GlobalKey<FormState>();

  void _handleTap() {
    // Odaktan çıkma işlemleri burada gerçekleştirilecek
    FocusScope.of(context).unfocus(); // İmleci kaybetmek için odaktan çıkar
  }

  @override
  Widget build(BuildContext context) {
    final double imageSize = MediaQuery.of(context).size.width * 0.23;
    return GestureDetector(
      onTap: _handleTap,
      child: Scaffold(
        appBar: CustomAppBar(title: "Hasan Ali Yücel Kültür Merkezi", icon: Icons.arrow_back_ios_new_outlined, onIconPressed: toDeleteFieldSignIn),
        body: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Container(
                decoration: BoxDecoration(shape: BoxShape.rectangle),
                padding: EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ListView(
                      shrinkWrap: true,
                      children: [
                        buildTextField(
                          controller: _tcnoController,
                          labelText: 'TC No',
                          prefixIcon: Icons.numbers,
                          maxLength: 11,
                          keyboardType: TextInputType.number,
                        ),
                        SizedBox(height: 10.0),
                        buildTextField(
                          controller: _adSoyadController,
                          labelText: 'Ad Soyad',
                          prefixIcon: Icons.confirmation_number_outlined,
                        ),
                        SizedBox(height: 10.0),
                        buildTextField(
                          controller: _userNameController,
                          labelText: 'Kullanıcı Adı',
                          prefixIcon: Icons.person_outline,
                          maxLength: 20,
                        ),
                        SizedBox(height: 10.0),
                        buildTextField(
                          controller: _emailController,
                          labelText: 'E-mail',
                          prefixIcon: Icons.email_outlined,
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(height: 10.0),
                        buildPasswordField(
                          controller: _passwordController,
                          labelText: 'Şifre',
                          suffixIcon: _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          onPressedSuffixIcon: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                          maxLength: 8,
                        ),
                        SizedBox(height: 40.0),
                        ElevatedButton(
                          onPressed: () {
                            // Üye ol butonuna tıklandığında yapılacak işlemler
                            if (_formKey.currentState!.validate()) {
                              // Form geçerliyse gönderilecek işlemler burada yapılır
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LogInPage(),
                                ),
                              );
                            } else {
                              // Form geçerli değilse hata mesajı gösterilir
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

  void toDeleteFieldSignIn() {
    _userNameController.text = '';
    _passwordController.text = '';
    _tcnoController.text = '';
    _adSoyadController.text = '';
    _emailController.text = '';
  }
}

Widget buildTextField({
  required TextEditingController controller,
  required String labelText,
  IconData? prefixIcon,
  int? maxLength,
  TextInputType? keyboardType,
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
      prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
      counterText: '',
    ),
    maxLength: maxLength,
    keyboardType: keyboardType,
  );
}

Widget buildPasswordField({
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
    obscureText: !_isPasswordVisible,
  );
}
