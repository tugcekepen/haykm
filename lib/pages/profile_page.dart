import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import '../components/app_bar.dart';
import '../inner_pages/profile_edit.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _image;
  ImageProvider? _imageProvider;

  Future getImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
        _imageProvider = FileImage(_image!);
      });
    }
  }

  void removeImage() {
    setState(() {
      _image = null;
      _imageProvider = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
          title: "Profil", icon: Icons.arrow_back_ios_new_outlined),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Divider(
              color: Theme.of(context).dividerColor,
            ),
            Container(
              color: Color(0xBBCE0D44).withOpacity(0.1), // Set the desired background color here
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      // Profil fotoğrafı değiştirme veya kaldırma işlemleri
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SimpleDialog(
                            title: Text("Profil Fotoğrafı"),
                            children: [
                              SimpleDialogOption(
                                onPressed: () {
                                  Navigator.pop(context);
                                  getImage(ImageSource.gallery);
                                },
                                child: Text("Galeriden Seç"),
                              ),
                              SimpleDialogOption(
                                onPressed: () {
                                  Navigator.pop(context);
                                  getImage(ImageSource.camera);
                                },
                                child: Text("Kameradan Al"),
                              ),
                              SimpleDialogOption(
                                onPressed: () {
                                  Navigator.pop(context);
                                  removeImage();
                                },
                                child: Text("Profil Fotoğrafını Kaldır"),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: _imageProvider ??
                          AssetImage("assets/images/anonim_person.jpg"),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    fieldValues["Ad Soyad"]!,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(fieldValues["TC No"]!), //TcNo
                  SizedBox(
                    height: 5,
                  ),
                  Text(fieldValues["Kullanıcı Adı"]!), //kullanıcı adı
                  SizedBox(height: 20),
                ],
              ),
            ),
            Divider(
              color: Theme.of(context).dividerColor,
            ),
            buildInfoRow("Email", fieldValues["Email"]!),
            buildInfoRow("Cinsiyet", fieldValues["Cinsiyet"]!),
            buildInfoRow("Adres", fieldValues["Adres"]!),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(elevation: 5),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProfileEditPage()),
                );
              },
              child: Text("Hesap Bilgilerimi Düzenle"),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildInfoRow(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(value),
        ],
      ),
    );
  }
}
