import 'package:appro/Models/Person.dart';

class Global_Variables {
  //#region singleton
  static final Global_Variables _instance = Global_Variables._internal();

  Global_Variables._internal();

  factory Global_Variables.getInstance() {
    return _instance;
  }

  //#endregion

  //#region variables
  Person currentUser = Person();
  //#endregion
}
