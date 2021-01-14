import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dropdownfield/dropdownfield.dart';
import 'package:appro/Models/TestList.dart';

class Add extends StatefulWidget {
@override
_AddState createState() => _AddState();
}

class _AddState extends State<Add> {
  final Map<int, String> _map = {
    0: 'Hotel',
    1: 'Crew',
    2: 'Person',
    3: 'Expense',
    4: 'Location',
    5: 'Tour',
    6: 'Transfer',
    7: 'Vehicle',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: Container(
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
    );
  }
}



