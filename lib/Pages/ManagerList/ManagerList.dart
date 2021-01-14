import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ManagerList extends StatelessWidget {
  final Map<int, String> _map = {
    0: 'Crew',
    1: 'Tour',
    2: 'Person',
    3: 'Location',
    4: 'Hotel',
    5: 'Expense',
    6: 'Transfer',
    7: 'Vehicle',
  };

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Container(
        height: 300,
        child: ListView.builder(
            itemCount: 8,
            itemBuilder: (_, index) {
              return Container(
                  margin: EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: ListTile(
                    title: Text(
                      'Manager of ' + _map[index].toString(),
                      style: TextStyle(fontSize: 20),
                    ),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      print('/' + _map[index].toString() + 'Manager');
                      Navigator.pushNamed(
                          context, '/' + _map[index].toString() + 'Manager');
                    },
                  ));
            }),
      )
    ]);
  }
}
