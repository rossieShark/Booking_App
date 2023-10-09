
class Tourist {
  bool isExpanded;
  int index;
  // Widget expandedValue;

  Tourist({required this.index, this.isExpanded = false});
}

class TouristModel {
  String phone;
  String email;
  String name;
  String surname;
  String birthDate;
  String citizenship;
  String passport;
  String dateOfPassport;

  TouristModel(
      {required this.phone,
      required this.email,
      required this.name,
      required this.surname,
      required this.birthDate,
      required this.citizenship,
      required this.passport,
      required this.dateOfPassport});
}
