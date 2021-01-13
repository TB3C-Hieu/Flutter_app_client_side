class Crew {
  int crewId;
  DateTime startDate;
  DateTime endDate;
  String info;
  int tourId;

  Crew({
    this.crewId,
    this.startDate,
    this.endDate,
    this.info,
    this.tourId,
  });

  Crew.fromJson(Map<String, dynamic> json) {
    this.crewId = json['crewId'];
    this.startDate = DateTime.parse(json['startDate']);
    this.endDate = DateTime.parse(json['endDate']);
    this.info = json['info'];
    this.tourId = json['tourId'];
  }
}

class CrewModelList {
  final List<Crew> crews;

  CrewModelList({this.crews});

  factory CrewModelList.fromJson(List<dynamic> json) {
    List<Crew> models = new List<Crew>();

    models = json.map((e) => Crew.fromJson(e)).toList();

    return new CrewModelList(crews: models);
  }
}
