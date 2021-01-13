import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return AppBar(
    elevation: 0.0,
    backgroundColor: Color(0xFF3EBACE),
    title: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(),
        child: Text(
          'Home',
        ),
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.notifications,
        ),
        onPressed: () => {
        },
      ),
      IconButton(
        icon: Icon(
          Icons.add,
        ),
        onPressed: () =>{
          Navigator.pushNamed(context,'/AddTour')
        },
      ),
    ],
  );
}