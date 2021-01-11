import '../HomeScreen/PartScreen//DestinationCarousel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../HomeScreen//PartScreen/HotelCarousel.dart';
import 'Components/appBar.dart';
import '../HomeScreen/Components/drawer.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.search,
    FontAwesomeIcons.creditCard,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        print(_selectedIndex);
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          color: _selectedIndex == index ? Theme
              .of(context)
              .accentColor : Color(0xFFE7EBEE),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Icon(
          _icons[index],
          size: 25,
          color: _selectedIndex == index ? Theme
              .of(context)
              .primaryColor : Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
      appBar: appBar(),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20, right: 120),
              child: Text(
                'Bạn muốn tìm gì ?',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children:
              _icons
                  .
              asMap()
                  .
              entries
                  .
              map(
                    (MapEntry map) => _buildIcon(map.key),
              )
                  .toList(),
            ),
            SizedBox(height: 20),
            DestinationC(),
            /*SizedBox(height: 20),
            HotelC(),*/
          ],
        ),
      ),
    );
  }

}