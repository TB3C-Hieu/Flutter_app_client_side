class Location{
  int locationId;
  String locationName;
  String locationInfo;

  Location.fromJson(Map<String, dynamic> json) {
    locationId = json['locationId'];
    locationName = json['locationName'];
    locationInfo  = json['locationInfo'];
  }

  String toString() {
    String _string;

    _string = '{"locationId": $locationId, "locationName": "$locationName", "locationInfo": "$locationInfo"}';

    return _string ;
  }

  Location({
    this.locationId,
    this.locationName,
    this.locationInfo,
  });
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