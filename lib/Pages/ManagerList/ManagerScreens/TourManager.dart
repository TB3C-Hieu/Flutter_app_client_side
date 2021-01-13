import 'package:appro/Models/Tour.dart';
import 'package:appro/Processors/PreApi/PreAPI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TourManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _tourManagerState();
}

class _tourManagerState extends State<TourManager> {
  Future<List> tours;

  PreAPI _helper = PreAPI();

  Future<List> fetchListHotel() async {
    final response = await _helper.get('/tour');

    return TourModelList.fromJson(response).tours;
  }

  @override
  void initState() {
    tours = fetchListHotel();

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
          future: tours,
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
                          '${snapshot.data[index].tourName}',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/HotelInfo');
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
