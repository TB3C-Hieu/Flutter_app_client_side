import 'package:appro/Models/Person.dart';
import 'package:appro/Processors/PreApi/PreAPI.dart';

class Global_Variables {
  //#region singleton
  static final Global_Variables _instance = Global_Variables._internal();

  Global_Variables._internal();

  factory Global_Variables.getInstance() {
    return _instance;
  }

  //#endregion

  //#region Networking
  PreAPI _helper = PreAPI();

  //#endregion

  //#region variables
  Future<Person> currentUser;

  int accountId;
  //#endregion

  Future<Person> fetchCurrentPerson() async {
    final response = await _helper.get('/account/$accountId/person');

    return Person.fromJson(response);
  }
}
