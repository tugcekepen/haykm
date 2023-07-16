import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/components/app_bar.dart';

class ApplyCourseForm extends StatefulWidget {


  const ApplyCourseForm({Key? key}) : super(key: key);

  @override
  State<ApplyCourseForm> createState() => _ApplyCourseFormState();
}

class _ApplyCourseFormState extends State<ApplyCourseForm> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController tcNoController = TextEditingController();
  TextEditingController adSoyadController = TextEditingController();
  TextEditingController ebeveynController = TextEditingController();
  TextEditingController ogrenimConroller = TextEditingController();
  TextEditingController evAdresiController = TextEditingController();
  TextEditingController isAdresiController = TextEditingController();
  TextEditingController dogumController = TextEditingController();
  TextEditingController medeniHalConroller = TextEditingController();
  TextEditingController telNoConroller = TextEditingController();
  TextEditingController meslekConroller = TextEditingController();

  String selectedMedeniHal = 'Bekar';

  void handleMedeniHalChange(String? value) {
    setState(() {
      selectedMedeniHal = value!;
    });
  }

  String selectedOgrenim = "Lisans";

  void handleOgrenimChange(String? value) {
    setState(() {
      selectedOgrenim = value!;
    });
  }

  void _handleTap() {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Scaffold(
        appBar: CustomAppBar(
          title: "Kurs Başvurusu",
          icon: Icons.arrow_back_ios_new_outlined,
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Center(
                    child: Text(
                      'ATAKUM BELEDİYESİ\nMESLEKİ, TEKNİK, SOSYAL VE KÜLTÜREL AMAÇLI KURS MERKEZİ ÖĞRENCİ KAYIT FORMU VE KAYIT SÖZLEŞMESİ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 5,
                  color: Color(0xFFCE0D44),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Öğrencinin :",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ApplyFormFields(
                            tcNoController: adSoyadController,
                            label: "Adı Soyadı"),
                        ApplyFormFields(
                          tcNoController: tcNoController,
                          label: "Tc Numarası",
                          keyType: TextInputType.number,
                          length: 11,
                        ),
                        ApplyFormFields(
                          tcNoController: ebeveynController,
                          label: "Baba Adı - Anne Adı",
                          hint: "Ahmet - Ayşe",
                        ),
                        ApplyFormFields(
                          tcNoController: dogumController,
                          label: "Doğum Yeri ve Tarihi",
                          hint: "Samsun - 01.01.1993",
                          keyType: TextInputType.datetime,
                        ),
                        ApplyFormFields(
                            tcNoController: evAdresiController,
                            label: "Ev Adresi"),
                        ApplyFormFields(
                            tcNoController: isAdresiController,
                            label: "İş Adresi"),
                        ApplyFormFields(
                          tcNoController: telNoConroller,
                          label: "Telefon Numarası",
                          length: 11,
                          hint: "05...",
                          keyType: TextInputType.number,
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 2,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Öğrenim Durumu",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                )),
                            Expanded(
                              child: DropdownButton<String>(
                                value: selectedOgrenim,
                                onChanged: handleOgrenimChange,
                                items: <String>[
                                  'Önlisans',
                                  'Lisans',
                                  'Yüksek Lisans',
                                  'Doktora'
                                ].map((String ogrenim) {
                                  return DropdownMenuItem<String>(
                                    value: ogrenim,
                                    child: Text(ogrenim),
                                  );
                                }).toList(),
                              ),
                            )
                          ],
                        ),
                        ApplyFormFields(
                            tcNoController: meslekConroller,
                            label: "Halen Çalışmakta Olduğu İş"),
                        Row(
                          children: [
                            Expanded(
                              child: RadioListTile(
                                title: Text('Evli'),
                                value: 'Evli',
                                groupValue: selectedMedeniHal,
                                onChanged: handleMedeniHalChange,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: RadioListTile(
                                title: Text('Bekar'),
                                value: 'Bekar',
                                groupValue: selectedMedeniHal,
                                onChanged: handleMedeniHalChange,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Kurslar :",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),

                        SizedBox(height: 16),
                        Center(
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {}
                            },
                            child: Text('Formu Gönder'),
                          ),
                        ),

                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ApplyFormFields extends StatelessWidget {
  const ApplyFormFields({
    super.key,
    required this.tcNoController,
    this.length,
    this.keyType,
    required this.label,
    this.hint,
  });

  final TextEditingController tcNoController;
  final int? length;
  final TextInputType? keyType;
  final String label;
  final String? hint;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        maxLength: length,
        keyboardType: keyType,
        controller: tcNoController,
        decoration: InputDecoration(
            labelText: label,
            hintText: hint,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFCE0D44)),
            ),
            counterText: ''),
        validator: (value) {
          if (value!.isEmpty) {
            return 'Bu alan boş bırakılamaz';
          }
          return null;
        },
      ),
    );
  }
}

class ApplyCourseButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          shape: StadiumBorder(),
        ),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ApplyCourseForm()));
        },
        child: Text(
          "Kurslara Başvur",
          style: TextStyle(fontSize: 16),
        ));
  }
}

