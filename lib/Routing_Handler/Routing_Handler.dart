import 'package:appro/Pages/HomeScreen/HomeScreen.dart';
import 'package:appro/Pages/HomeScreen/Widget//DestinationScreen.dart';
import 'package:appro/Pages/LoginScreen/LoginPage.dart';
import 'package:appro/Pages/ManagerList/Info/CrewInfo.dart';
import 'package:appro/Pages/ManagerList/Info/HotelInfo.dart';
import 'package:appro/Pages/ManagerList/Info/LocationInfo.dart';
import 'package:appro/Pages/ManagerList/Info/PersonInfo.dart';
import 'package:appro/Pages/ManagerList/Info/TourInfo.dart';
import 'package:appro/Pages/ManagerList/Info/TransferInfo.dart';
import 'package:appro/Pages/ManagerList/Info/VehicleInfo.dart';
import 'package:appro/Pages/ManagerList/ManagerList.dart';
import 'package:appro/Pages/ManagerList/ManagerScreens/CrewManager.dart';
import 'package:appro/Pages/ManagerList/ManagerScreens/HotelManager.dart';
import 'package:appro/Pages/ManagerList/ManagerScreens/LocationManager.dart';
import 'package:appro/Pages/ManagerList/ManagerScreens/PersonManager.dart';
import 'package:appro/Pages/ManagerList/ManagerScreens/TourManager.dart';
import 'package:appro/Pages/Register/Register.dart';
import 'package:appro/Pages/Settings/Add.dart';
import 'package:appro/Pages/Settings/Setting.dart';
import 'package:appro/Pages/Settings/edit_profile.dart';
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
      case '/ProFilePage':
        return MaterialPageRoute(builder: (_) => Profile());
      case '/SettingPage':
        return MaterialPageRoute(builder: (_) => SettingsPage());
      case '/Add':
        return MaterialPageRoute(builder: (_) => Add());
      case '/ManagerPage':
        return MaterialPageRoute(builder: (_) => ManagerList());
      case '/HotelManager':
        return MaterialPageRoute(builder: (_) => HotelManager());
      case '/LocationManager':
        return MaterialPageRoute(builder: (_) => LocationManager());
      case '/CrewManager':
        return MaterialPageRoute(builder: (_) => CrewManager());
      case '/PersonManager':
        return MaterialPageRoute(builder: (_) => PersonManager());
      case '/TourManager':
        return MaterialPageRoute(builder: (_) => TourManager());
      case '/HotelInfo':
        return MaterialPageRoute(builder: (_) => HotelInfoPage());
      case '/CrewInfo':
        return MaterialPageRoute(builder: (_) => CrewInfoPage());
      case '/LocationInfo':
        return MaterialPageRoute(builder: (_) => LocationInfoPage());
      case '/PersonInfo':
        return MaterialPageRoute(builder: (_) => PersonInfoPage());
      case '/TourInfo':
        return MaterialPageRoute(
            builder: (_) => TourInfoPage(
                  tour: args,
                ));
      case '/TransferInfo':
        return MaterialPageRoute(builder: (_) => TransferInfoPage());
      case '/VehicleInfo':
        return MaterialPageRoute(builder: (_) => VehicleInfoPage());

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
