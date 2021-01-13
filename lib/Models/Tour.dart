class Tour {
  int idTour;
  String tourName;
  int tourPrice;
  String tourInfo;

  Tour({
    this.idTour,
    this.tourName,
    this.tourPrice,
    this.tourInfo,
  });

  Tour.fromJson(Map<String, dynamic> json) {
    this.idTour = json['idTour'];
    this.tourName = json['tourName'];
    this.tourPrice = json['tourPrice'];
    this.tourInfo = json['tourInfo'];
  }
}

class TourModelList {
  final List<Tour> tours;

  TourModelList({this.tours});

  factory TourModelList.fromJson(List<dynamic> json) {
    List<Tour> models = new List<Tour>();

    models = json.map((e) => Tour.fromJson(e)).toList();

    return new TourModelList(tours: models);
  }
}
