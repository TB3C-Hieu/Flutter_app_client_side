class Location{
  int locationId;
  String locationName;
  String locationInfo;

  Location.fromJson(Map<String, dynamic> json) {
    locationId = json['locationId'];
    locationName = json['locationName'];
    locationInfo  = json['locationInfo'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json;
    json['locationId']  = locationId;
    json['locationName']  = locationName;
    json['locationInfo']  = locationInfo;

    return json;
  }
}

class LocationModelList {
  final List<Location> result;

  LocationModelList({this.result}) ;

  factory LocationModelList.fromJson(List<dynamic> json){

    List<Location> models = new List<Location>();

    models = json.map((e) => Location.fromJson(e)).toList();

    return new LocationModelList(result: models) ;

  }
}