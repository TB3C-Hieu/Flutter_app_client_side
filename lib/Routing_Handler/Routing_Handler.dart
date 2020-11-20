import 'package:appro/Pages/LoginScreen/LoginPage.dart';
import 'package:flutter/material.dart';

import 'package:appro/main.dart';

class RouteHandler{
  static Route<dynamic> generateRoute(RouteSettings settings)
  {
    final args = settings.arguments;

    switch(settings.name)
    {
      case '/':
        return MaterialPageRoute(builder: (_) => LoginPage());
    }
  }
}