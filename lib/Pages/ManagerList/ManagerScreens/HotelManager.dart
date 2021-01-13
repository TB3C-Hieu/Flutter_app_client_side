import 'package:appro/Models/hotels.dart';
import 'package:appro/Processors/PreApi/PreAPI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HotelManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _hotelManagerState();
}

class _hotelManagerState extends State<HotelManager> {
  Future<List> hotels;

  PreAPI _helper = PreAPI();

  Future<List> fetchListHotel() async {
    final response = await _helper.get('/hotel');

    return HotelModelList.fromJson(response).hotels;
  }

  @override
  void initState() {
    hotels = fetchListHotel();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hotel Manager'),
      ),
      body: Container(
        child: FutureBuilder<List>(
          future: hotels,
          builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      padding: EdgeInsets.all(2.0),
                      margin: EdgeInsets.all(2.0),
                      height: 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Text(
                            '${snapshot.data[index].name}',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          )));
                },
              );
            }
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 200.0, horizontal: 45),
              child: Text(
                "Be patient! Just a little bit more :D",
                style: TextStyle(fontSize: 20),
              ),
            );
          },
        ),
      ),
    );
  }
}
