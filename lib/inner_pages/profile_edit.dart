import 'package:flutter/material.dart';
import '../components/app_bar.dart';

class ProfileEditPage extends StatefulWidget {
  @override
  _ProfileEditPageState createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {


  void _handleTap() {
    // Odaktan çıkma işlemleri burada gerçekleştirilecek
    FocusScope.of(context).unfocus(); // İmleci kaybetmek için odaktan çıkar
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Scaffold(
        appBar: const CustomAppBar(
            title: "Hesap Bilgilerimi Düzenle",
            icon: Icons.arrow_back_ios_new_outlined),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: ListView.builder(
            itemCount: fieldValues.length,
            itemBuilder: (context, index) {
              String field = fieldValues.keys.elementAt(index);
              String initialValue = fieldValues[field]!;

              if (editableFields.contains(field)) {
                return buildInfoField(field, initialValue);
              } else {
                return buildUneditableInfoField(field, initialValue);
              }
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          elevation: 5,
          onPressed: () {
            Navigator.pop(context, fieldValues);
          },
          child: Icon(Icons.check, size: 25,),
        ),
      ),
    );
  }

  Widget buildInfoField(String label, String initialValue) {
    TextEditingController controller =
        TextEditingController(text: initialValue);

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
            onChanged: (value) {
              fieldValues[label] = value;
            },
          ),
        ],
      ),
    );
  }

  Widget buildUneditableInfoField(String label, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 5),
          Text(
            value,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

List<String> editableFields = ["Email", "Cinsiyet", "Adres"];
Map<String, String> fieldValues = {
  "Ad Soyad": "Tuğçe Kepen",
  "TC No": "12345678900",
  "Kullanıcı Adı": "kullanici123",
  "Email": "ornek@email.com",
  "Cinsiyet": "Kadın",
  "Adres": "Samsun, Türkiye",
};
