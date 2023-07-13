import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kutuphane_masa_takibi/pages/signin.dart';
import '../components/app_bar.dart';
import '../components/bottom_navi.dart';
import '../components/drawer_menu.dart';
import 'home_page.dart';
import 'login.dart';

TextEditingController _titleController = TextEditingController();
TextEditingController _contentController = TextEditingController();

class SuggestionPage extends StatefulWidget {
  const SuggestionPage({Key? key}) : super(key: key);

  @override
  State<SuggestionPage> createState() => _SuggestionPageState();
}

class _SuggestionPageState extends State<SuggestionPage> {
  final GlobalKey<ScaffoldState> _scaffold = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  String? selectedImageName;

  void drawerOpen() {
    _scaffold.currentState?.openDrawer();
  }

  Future<void> _getImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);

    if (pickedImage != null) {
      setState(() {
        selectedImageName = pickedImage.name;
      });
    }
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
        key: _scaffold,
        drawer: DrawerMenu(),
        appBar: CustomAppBar(
            scaffold: _scaffold,
            title: "Öneri ve Şikayetleriniz",
            icon: Icons.menu,
            onIconPressed: drawerOpen),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'İleti Başlığı',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 230),
                    TextFormField(
                        controller: _titleController,
                        decoration: InputDecoration(
                          hintText: 'Başlık',
                          hintStyle: TextStyle(
                            fontSize: 14,
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                        validator: (value) {
                          if(value==null || value.length <=1 ){
                            return "Başlık boş bırakılamaz.";
                          }
                        },
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 50),
                    Text(
                      'İleti İçeriği',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height / 100),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: TextFormField(
                        controller: _contentController,
                        maxLines: 13,
                        decoration: InputDecoration(
                          hintText: 'Mesajınız',
                          hintStyle: TextStyle(
                            fontSize: 14,
                          ),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFCF0000))),
                          contentPadding: EdgeInsets.only(left: 10, top: 25),
                        ),
                        validator: (value) {
                          if(value==null || value.length <=1){
                            return "İçerik boş bırakılamaz.";
                          }
                        },
                      ),
                    ),
                    SizedBox(height: 16),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        elevation: 5,
                      ),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Görsel Ekle'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: <Widget>[
                                    GestureDetector(
                                      child: const Text('Kamera'),
                                      onTap: () {
                                        _getImage(ImageSource.camera);
                                        Navigator.pop(context);
                                      },
                                    ),
                                    const SizedBox(height: 10),
                                    GestureDetector(
                                      child: const Text('Galeri'),
                                      onTap: () {
                                        _getImage(ImageSource.gallery);
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: const Text('Görsel Ekle'),
                    ),
                    if (selectedImageName != null)
                      Container(
                        margin: const EdgeInsets.only(top: 16),
                        child: Text(
                          selectedImageName!,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    SizedBox(height: 15),
                    Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 5,
                          ),
                          onPressed: () {
                            if (!isLogin!){
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12)),
                                    title: Text('Hata'),
                                    content: Text('Lütfen giriş yapınız.'),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          toDeleteFieldSC();
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => SignInPage(),
                                            ),
                                          );
                                        },
                                        child: Text('Giriş Yap'),
                                      ),
                                    ],
                                  );
                                },
                              );
                            } else {
                              if (_formKey.currentState!.validate()) {
                                toDeleteFieldSC();
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
                            }

                          },
                          child: Text("Gönder"),
                        ),
                      ]
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavi(context, 4),
      ),
    );
  }
}

void toDeleteFieldSC() {
  _titleController.text = "";
  _contentController.text = "";
}
