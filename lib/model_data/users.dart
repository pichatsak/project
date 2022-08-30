import 'dart:convert';

class UsersData {
  String key;
  String phone;
  String pass;
  String name;
  double age;
  double weight;
  double high;
  String sex;
  String cdUser;
  String numberHn;
  dynamic dateIn;
  dynamic dateOut;
  dynamic dateSurgery;
  String typeSur;
  String loLat;
  String loLong;
  dynamic dateCreate;
  UsersData({
    required this.key,
    required this.phone,
    required this.pass,
    required this.name,
    required this.age,
    required this.weight,
    required this.high,
    required this.sex,
    required this.cdUser,
    required this.numberHn,
    required this.dateIn,
    required this.dateOut,
    required this.dateSurgery,
    required this.typeSur,
    required this.loLat,
    required this.loLong,
    required this.dateCreate,
  });

  UsersData copyWith({
    String? key,
    String? phone,
    String? pass,
    String? name,
    double? age,
    double? weight,
    double? high,
    String? sex,
    String? cdUser,
    String? numberHn,
    dynamic? dateIn,
    dynamic? dateOut,
    dynamic? dateSurgery,
    String? typeSur,
    String? loLat,
    String? loLong,
    dynamic? dateCreate,
  }) {
    return UsersData(
      key: key ?? this.key,
      phone: phone ?? this.phone,
      pass: pass ?? this.pass,
      name: name ?? this.name,
      age: age ?? this.age,
      weight: weight ?? this.weight,
      high: high ?? this.high,
      sex: sex ?? this.sex,
      cdUser: cdUser ?? this.cdUser,
      numberHn: numberHn ?? this.numberHn,
      dateIn: dateIn ?? this.dateIn,
      dateOut: dateOut ?? this.dateOut,
      dateSurgery: dateSurgery ?? this.dateSurgery,
      typeSur: typeSur ?? this.typeSur,
      loLat: loLat ?? this.loLat,
      loLong: loLong ?? this.loLong,
      dateCreate: dateCreate ?? this.dateCreate,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'key': key,
      'phone': phone,
      'pass': pass,
      'name': name,
      'age': age,
      'weight': weight,
      'high': high,
      'sex': sex,
      'cdUser': cdUser,
      'numberHn': numberHn,
      'dateIn': dateIn,
      'dateOut': dateOut,
      'dateSurgery': dateSurgery,
      'typeSur': typeSur,
      'loLat': loLat,
      'loLong': loLong,
      'dateCreate': dateCreate,
    };
  }

  factory UsersData.fromMap(Map<String, dynamic> map) {
    return UsersData(
      key: map['key'] ?? '',
      phone: map['phone'] ?? '',
      pass: map['pass'] ?? '',
      name: map['name'] ?? '',
      age: map['age']?.toDouble() ?? 0.0,
      weight: map['weight']?.toDouble() ?? 0.0,
      high: map['high']?.toDouble() ?? 0.0,
      sex: map['sex'] ?? '',
      cdUser: map['cdUser'] ?? '',
      numberHn: map['numberHn'] ?? '',
      dateIn: map['dateIn'] ?? null,
      dateOut: map['dateOut'] ?? null,
      dateSurgery: map['dateSurgery'] ?? null,
      typeSur: map['typeSur'] ?? '',
      loLat: map['loLat'] ?? '',
      loLong: map['loLong'] ?? '',
      dateCreate: map['dateCreate'] ?? null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UsersData.fromJson(String source) =>
      UsersData.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UsersData(key: $key, phone: $phone, pass: $pass, name: $name, age: $age, weight: $weight, high: $high, sex: $sex, cdUser: $cdUser, numberHn: $numberHn, dateIn: $dateIn, dateOut: $dateOut, dateSurgery: $dateSurgery, typeSur: $typeSur, loLat: $loLat, loLong: $loLong, dateCreate: $dateCreate)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UsersData &&
        other.key == key &&
        other.phone == phone &&
        other.pass == pass &&
        other.name == name &&
        other.age == age &&
        other.weight == weight &&
        other.high == high &&
        other.sex == sex &&
        other.cdUser == cdUser &&
        other.numberHn == numberHn &&
        other.dateIn == dateIn &&
        other.dateOut == dateOut &&
        other.dateSurgery == dateSurgery &&
        other.typeSur == typeSur &&
        other.loLat == loLat &&
        other.loLong == loLong &&
        other.dateCreate == dateCreate;
  }

  @override
  int get hashCode {
    return key.hashCode ^
        phone.hashCode ^
        pass.hashCode ^
        name.hashCode ^
        age.hashCode ^
        weight.hashCode ^
        high.hashCode ^
        sex.hashCode ^
        cdUser.hashCode ^
        numberHn.hashCode ^
        dateIn.hashCode ^
        dateOut.hashCode ^
        dateSurgery.hashCode ^
        typeSur.hashCode ^
        loLat.hashCode ^
        loLong.hashCode ^
        dateCreate.hashCode;
  }
}
