import 'package:appro/Models/Location/Location.dart';
import 'package:appro/Processors/PreApi/PreAPI.dart';
import 'package:flutter/material.dart';

class TourInfoPage extends StatefulWidget {
  Map tour;

  TourInfoPage({this.tour});

  @override
  _TourInfoPageState createState() => _TourInfoPageState();
}

class _TourInfoPageState extends State<TourInfoPage> {
  Future<List> locations;

  PreAPI _helper = PreAPI();

  @override
  void initState() {
    this.locations = fetchListLocation();
    super.initState();
  }

  Future<List> fetchListLocation() async {
    int status = widget.tour['idTour'];
    final response =
        await _helper.get('/tour/' + status.toString() + '/location');

    return LocationModelList.fromJson(response).result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(16.0, 200.0, 16.0, 16.0),
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(16.0),
                        margin: EdgeInsets.only(top: 16.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5.0)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 0.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    widget.tour['tourName'],
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10.0),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          title: Text("Thông tin Tour"),
                        ),
                        Divider(),
                        ListTile(
                            title: Text('Tên Tour'),
                            subtitle: TextField(
                              decoration: InputDecoration(
                                hintText: widget.tour['tourName'],
                              ),
                            )),
                        ListTile(
                            title: Text("Giá"),
                            subtitle: TextField(
                              decoration: InputDecoration(
                                hintText: widget.tour['tourPrice'].toString(),
                              ),
                            )),
                        ListTile(
                            title: Text("Nội dung"),
                            subtitle: TextField(
                              decoration: InputDecoration(
                                hintText: widget.tour['tourInfo'],
                              ),
                            )),
                        FutureBuilder<List>(
                          future: locations,
                          builder: (BuildContext context,
                              AsyncSnapshot<List> snapshot) {
                            if (snapshot.hasData) {
                              return ListView.builder(
                                  itemCount: snapshot.data.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                        margin: EdgeInsets.all(2.0),
                                        padding: EdgeInsets.all(15.0),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        child: ListTile(
                                          title: Text(
                                            '${snapshot.data[index].locationName}',
                                            style: TextStyle(
                                              fontSize: 30,
                                            ),
                                          ),
                                        ));
                                  });
                            }
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 300.0, horizontal: 20),
                              child: Text(
                                "Crunching . . .",
                                style: TextStyle(fontSize: 25),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            AppBar(
              backgroundColor: Theme.of(context).primaryColor,
              elevation: 1,
              leading: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.delete,
                  ),
                  onPressed: () => {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.save,
                  ),
                  onPressed: () => {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
