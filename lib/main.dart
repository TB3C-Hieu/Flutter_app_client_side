import 'package:appro/Routing_Handler/Routing_Handler.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/' ,
      onGenerateRoute: RouteHandler.generateRoute,
    );
  }
}








