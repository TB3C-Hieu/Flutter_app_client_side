import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          FontAwesomeIcons.angleDoubleRight,
        ),
        onPressed: () =>{
          Navigator.pushNamed(context,'/Add')
        },
      ),
    ],
  );
}