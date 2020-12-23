import 'package:appro/Pages/LoginScreen/LoginPage.dart';
import 'package:appro/Pages/HomeScreen//PartScreen/DestinationScreen.dart';
import 'package:appro/Pages/Register/Register.dart';
import 'package:appro/Pages/HomeScreen/HomeScreen.dart';
import 'package:appro/Pages/TestCase/TestCase.dart';

import 'package:flutter/material.dart';


class RouteHandler {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
      switch (settings.name) {
        case '/':
          return MaterialPageRoute(builder: (_) => LoginPage());
        case '/Register':
          return MaterialPageRoute(builder: (_) => Register());
        case '/HomeScreen':
          return MaterialPageRoute(builder: (_) => HomeScreen());
        case '/DestinationScreen':
          return MaterialPageRoute(builder: (_) => DestinationScreen());
        case '/TestCase':
          return MaterialPageRoute(builder: (_) => TestCase());
        default:
          return _errorRoute();
      }
    }

  static Route<dynamic> _errorRoute(){
    return MaterialPageRoute(builder: (_){
     return Scaffold(
       appBar: AppBar(
         title: Text('Error'),
       ),
       body: Center(
         child: Text('ERROR'),
       ),
     ) ;
    });
  }
}