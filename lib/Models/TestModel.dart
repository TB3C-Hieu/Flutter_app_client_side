class TestModel {
  int userId;
  int id;
  String title;
  String body;

  //parse section of object
  TestModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    body = json['body'];

  }
}

class TestModelList{
  final List<TestModel> result;

  TestModelList({this.result });

  factory TestModelList.fromJson(List<dynamic> json){
    //create new list
    List<TestModel> models = new List<TestModel>();
    //parse model to object
    models = json.map((e) => TestModel.fromJson(e)).toList();
    // return it
    return new TestModelList( result: models);
  }
}