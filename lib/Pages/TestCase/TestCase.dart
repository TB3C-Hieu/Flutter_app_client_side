import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:appro/Models/Location/Location.dart';
import 'package:appro/Models/TestModel.dart';
import 'package:appro/Processors/PreApi/PreAPI.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';


class TestCase extends StatefulWidget
{
  @override
  TestCaseState createState() => TestCaseState();

}

class TestCaseState extends State<TestCase>
{
  PreAPI _helper = PreAPI();

  Location _location = Location(locationId: 3, locationName: 'new zealand', locationInfo: 'what');

  Future<List<Location>> fetchListLocation() async{
    final response = await _helper.get('/location');

    return LocationModelList.fromJson(response).result;
  }

  Future<void> postLocation() async{
    //String json = '{"locationId": 1, "locationName": "new zealand", "locationInfo": "new zealand"}';

    final response = await _helper.post('/location', _location.toString());
  }

  Future<String> getData() async
  {
/*    HttpClient client = new HttpClient();
    client.badCertificateCallback = ((X509Certificate cer, String host, int port) => true) ;

    String url = "https://192.168.0.104:44308/weatherforecast";

    Map map = {
      "date" : "date " ,
      "temperatureC" : "temperatureC",
      "temperatureF":"temperatureF",
      "summary":"summary"
    };

    HttpClientRequest request = await client.getUrl(Uri.parse(url));

    request.headers.set('content-type', 'application/json');

    //request.headers.contentLength = utf8.encode(map).length

    //request.add(utf8.encode(json.encode(map)));

    HttpClientResponse response = await request.close();

    String reply = await response.transform(utf8.decoder).join();

    print(reply);*/
    //http.response type of return.


    HttpClient client = new HttpClient();
    client.badCertificateCallback = ((X509Certificate cer, String host, int port) => true) ;

    var ioClient = new IOClient(client);

    //http.Response response = await

/*    HttpClientRequest request = await client.getUrl(Uri.parse("https://10.0.2.2:44308/weatherforecast"));

    request.headers.set('content-type', 'application/json');*/

    var response = await ioClient.get(
        Uri.encodeFull("https://192.168.43.162:45455/api/Account/1990"),
        headers:
        {
          "Accept" : "application/json"
        }
    );

    print(response.body);
  }


  @override
  Widget build (BuildContext context)
  {
    return new Scaffold(
      body: new Center(
        child: new RaisedButton(
          child: new Text("Get data"),
          onPressed: postLocation,
        )
      ),
    );
  }
}