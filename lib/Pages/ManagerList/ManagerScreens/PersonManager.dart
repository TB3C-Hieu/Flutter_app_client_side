import 'package:appro/Models/Person.dart';
import 'package:appro/Processors/PreApi/PreAPI.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _personManagerState();
}

class _personManagerState extends State<PersonManager> {
  Future<List> persons;

  PreAPI _helper = PreAPI();

  Future<List> fetchListPerson() async {
    final response = await _helper.get('/person');

    return PersonModelList.fromJson(response).persons;
  }

  @override
  void initState() {
    persons = fetchListPerson();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Person Manager'),
      ),
      body: Container(
        child: FutureBuilder<List>(
          future: persons,
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
                          '${snapshot.data[index].name}',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/PersonInfo');
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
