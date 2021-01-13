class Person {
  int personId;
  String name;
  String identificationCard;
  bool gender;
  String phoneNumber;
  int accountId;

  Person({
    this.personId,
    this.name,
    this.identificationCard,
    this.gender,
    this.phoneNumber,
    this.accountId,
  });

  Person.fromJson(Map<String, dynamic> json) {
    this.personId = json['personId'];
    this.name = json['name'];
    this.identificationCard = json['identificationCard'];
    this.gender = json['gender'];
    this.phoneNumber = json['phoneNumber'];
    this.accountId = json['accountId'];
  }
}

class PersonModelList {
  final List<Person> persons;

  PersonModelList({this.persons});

  factory PersonModelList.fromJson(List<dynamic> json) {
    List<Person> models = new List<Person>();

    models = json.map((e) => Person.fromJson(e)).toList();

    return new PersonModelList(persons: models);
  }
}
