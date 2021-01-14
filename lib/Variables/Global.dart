class Global_Variables {
  static final Global_Variables _instance = Global_Variables._internal();

  Global_Variables._internal();

  factory Global_Variables() {
    return _instance;
  }
}
