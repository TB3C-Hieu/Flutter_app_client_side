import 'package:appro/Models/Crew.dart';
import 'package:appro/Processors/PreApi/PreAPI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CrewManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _crewManagerState();
}

class _crewManagerState extends State<CrewManager> {
  Future<List> crews;

  PreAPI _helper = PreAPI();

  Future<List> fetchListCrew() async {
    final response = await _helper.get('/crew');

    return CrewModelList.fromJson(response).crews;
  }

  @override
  void initState() {
    crews = fetchListCrew();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Crew Manager'),
        actions: <Widget>[
        IconButton(
          icon: Icon(
        Icons.add,
      ),
      onPressed: () => {
      },
    ),
      ]
      ),
      body: Container(
        child: FutureBuilder<List>(
          future: crews,
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
                          '${snapshot.data[index].info}',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/CrewInfo');
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
