import 'dart:ffi';

class Hotel {
  int hotelId;
  String imageUrl;
  String name;
  String address;
  int price;

  Hotel({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });

  Hotel.fromJson(Map<String, dynamic> json) {
    this.hotelId = json['hotelID'];
    this.name = json['hotelName'];
    this.address = json['hotelAdress'];
    this.price = json['hotelPrice'];
  }
}

class HotelModelList{
  final List<Hotel> hotels;

  HotelModelList({this.hotels});

  factory HotelModelList.fromJson(List<dynamic> json) {
    List<Hotel> models = new List<Hotel>();

    models = json.map((e) => Hotel.fromJson(e)).toList();

    return new HotelModelList(hotels :models) ;
  }

}

/*final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/test.jpg',
    name: 'Hotel 0',
    address: '404 Great St',
    price: 175,
  ),
];*/
