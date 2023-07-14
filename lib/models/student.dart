import 'dart:core';

class Student {

  late String _tcNo;
  late String _userName;
  late String _fullName;
  late DateTime _bday;
  late String _gender;
  late String _address;
  late String _email;

  String get TcNo => _tcNo;
  String get UserName => _userName;
  String get FullName => _fullName;
  DateTime get BDay => _bday;
  String get Gender => _gender;
  String get Address => _address;
  String get Email => _email;

  void setTcNo(String value){
    if(value != null && value.length==11 && int.tryParse(value) != null) {
      _tcNo = value;
    }
  }

  void setUserName(String value){
    _userName = value;
  }

  void setFullName(String value){
    if(value != null && value.contains(" ") && value.length >= 5 && RegExp(r'^[a-zA-Z ]+$').hasMatch(value)){
      _fullName = value;
    }
  }

  void setBDay(DateTime value) {
    DateTime minDate = DateTime(1900, 1, 1); // Minimum kabul edilen tarih
    DateTime maxDate = DateTime.now().subtract(Duration(days: 365 * 30)); // Şu andan 30 yıl önceki tarih

    if (value != null && value.isAfter(minDate) && value.isBefore(maxDate)) {
      int age = DateTime.now().difference(value).inDays ~/ 365; // Yaşı hesapla
      if (age <= 30) {
        _bday = value;
      }
    }
  }

  void setGender(String value){
    if(value != null){
      value.toUpperCase();
      if(value=="ERKEK" || value=="KADIN"){
        _gender=value;
      }
    }
  }

  void setAddress(String value){
    if(value != null){
      _address = value;
    }
  }

  Student();

  Student.withInfo(String tcNo, String userName, String fullName, String email, DateTime bDay, String gender, String address){
    _tcNo=tcNo;
    _userName=userName;
    _fullName=fullName;
    _email=email;
    _bday=bDay;
    _gender=gender;
    _address=address;
  }
}
