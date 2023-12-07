import 'package:flutter/material.dart';
import 'package:kutuphane_masa_takibi/components/app_bar.dart';
import 'package:kutuphane_masa_takibi/data/courses_items.dart';
import 'package:kutuphane_masa_takibi/pages/courses_page.dart';

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

  List<bool> checkboxValues = List.filled(items.length, false);

  List<Widget> buildCourseCheckboxes() {
    List<Widget> checkboxes = [];
    for (int i = 0; i < items.length; i++) {
      checkboxes.add(
        Row(
          children: [
            Expanded(
              child: Checkbox(
                value: checkboxValues[i],
                onChanged: (bool? value) {
                  setState(() {
                    checkboxValues[i] = value!;
                  });
                },
              ),
            ),
            Expanded(
              flex: 9,
              child: Text(items.keys.toList()[i]),
            ),
          ],
        ),
      );
    }
    return checkboxes;
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
                const SizedBox(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Öğrencinin :",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ApplyFormFields(
                            controller: adSoyadController,
                            label: "Adı Soyadı"),
                        ApplyFormFields(
                          controller: tcNoController,
                          label: "Tc Numarası",
                          keyType: TextInputType.number,
                          length: 11,
                        ),
                        ApplyFormFields(
                          controller: ebeveynController,
                          label: "Baba Adı - Anne Adı",
                          hint: "Ahmet - Ayşe",
                        ),
                        ApplyFormFields(
                          controller: dogumController,
                          label: "Doğum Yeri ve Tarihi",
                          hint: "Samsun - 01.01.1993",
                          keyType: TextInputType.datetime,
                        ),
                        ApplyFormFields(
                            controller: evAdresiController,
                            label: "Ev Adresi"),
                        ApplyFormFields(
                            controller: isAdresiController,
                            label: "İş Adresi"),
                        ApplyFormFields(
                          controller: telNoConroller,
                          label: "Telefon Numarası",
                          length: 11,
                          hint: "05...",
                          keyType: TextInputType.number,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Öğrenim Durumu",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                )),
                            Expanded(
                              flex: 3,
                              child: DropdownButton<String>(
                                icon: Icon(Icons.keyboard_arrow_down),
                                alignment: Alignment.bottomRight,
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
                            controller: meslekConroller,
                            label: "Halen Çalışmakta Olduğu İş"),
                        const SizedBox(
                          height: 10,
                        ),
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
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Kurslar :",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        if(course_page>0 && course_page<17)
                          ...buildCourseCheckboxes(),
                        Center(
                          heightFactor: 2,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 5
                            ),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => CoursesPage()));
                                _formKey.currentState!.reset();
                              }
                            },
                            child: Text('Başvuru Formunu Gönder'),
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
    required this.controller,
    this.length,
    this.keyType,
    required this.label,
    this.hint,
  });

  final TextEditingController controller;
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
        controller: controller,
        decoration: InputDecoration(
            labelText: label,
            labelStyle: TextStyle(fontSize: 14),
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

class ApplyCourseButton extends StatefulWidget {
  @override
  State<ApplyCourseButton> createState() => _ApplyCourseButtonState();
}

class _ApplyCourseButtonState extends State<ApplyCourseButton> {

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 5,
          shape: StadiumBorder(),
        ),
        onPressed: () {
          setState(() {
            switch(course_page){
              case 1:
                items = SgissItems;
                break;
              case 2:
                items = RadioTvItems;
                break;
              case 3:
                items = BeautyAndHairItems;
                break;
              case 4:
                items = ArtDesignItems;
                break;
              case 5:
                items = CandleAndSoapItems;
                break;
              case 6:
                items = InformationTechnologiesItems;
                break;
              case 7:
                items = TechServiceItems;
                break;
              case 8:
                items = GraphAnimPhotoItems;
                break;  
              case 9:
                items = AdDesignItems;
                break;
              case 10:
                items = JewelryItems;
                break;
              case 11:
                items = HardwoodItems;
                break;
              case 12:
                items = ChildDevItems;
                break;
              case 13:
                items = PatientElderlyCareItems;
                break;
              case 14:
                items = CookeryItems;
                break;
              case 15:
                items = PastryItems;
                break;
              case 16:
                items = ForeignLangItems;
                break;
            }
          });
          print(course_page);
          print(items);
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ApplyCourseForm()));
        },
        child: Text(
          "Kurslara Başvur",
          style: TextStyle(fontSize: 16),
        ));
  }
}
