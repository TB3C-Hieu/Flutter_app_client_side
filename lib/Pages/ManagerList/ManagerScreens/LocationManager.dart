import 'package:appro/Models/Location/Location.dart';
import 'package:appro/Processors/PreApi/PreAPI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _locationManagerState();
}

class _locationManagerState extends State<LocationManager> {
  Future<List> locations;

  PreAPI _helper = PreAPI();

  Future<List> fetchListHotel() async {
    final response = await _helper.get('/location');

    return LocationModelList.fromJson(response).result;
  }

  @override
  void initState() {
    locations = fetchListHotel();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location Manager'),
      ),
      body: Container(
        child: FutureBuilder<List>(
          future: locations,
          builder: (BuildContext context, AsyncSnapshot<List> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      margin: EdgeInsets.all(2.0),
                      padding: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ListTile(
                        title: Text(
                          '${snapshot.data[index].locationName}',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/');
                        },
                      ));
                },
              );
            }
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 300.0, horizontal: 20),
              child: Text(
                "Hang Tight More Data Incoming !!!",
                style: TextStyle(fontSize: 25),
              ),
            );
          },
        ),
      ),
    );
  }
}
