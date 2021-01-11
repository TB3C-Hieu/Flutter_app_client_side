import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'Exception.dart';

import 'package:http/io_client.dart';

class PreAPI {
  static HttpClient apiClient;

  //final String _baseUrl = 'https://localhost:44308/';
  final String _baseUrl = 'https://tour-manager-sever-side.conveyor.cloud/api';


  Future<dynamic> get(String url) async{
    var responseJson;

    try{

      print(_baseUrl + url) ;

      final response = await http.get(_baseUrl + url) ;

      responseJson = _returnResponse(response) ;
    } on SocketException {
      throw FetchDataException('No Internet connection') ;
    }

    return responseJson;
  }

  Future<dynamic> post(String url, String json )async {

    print(_baseUrl + url) ;

    Map<String, String> headers = {"Content-type": "application/json"};

    final response = await http.post(_baseUrl + url, headers: headers, body: json);

    int statusCode = response.statusCode;

    // can return the passing body if want to
  }

  Future<dynamic> put(String url, String json) async {
    print(_baseUrl + url) ;

    Map<String, String> headers = {"Content-type": "application/json"};

    final response = await http.put(_baseUrl + url , headers: headers, body: json);

  }

  Future<dynamic> delete(String url) async{
    print(_baseUrl + url) ;

    Map<String, String> headers = {"Content-type": "application/json"};

    final response = await http.delete(_baseUrl + url,headers: headers );

    return response.statusCode;
  }

  dynamic _returnResponse(http.Response response){
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        print(responseJson);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
      case 403:
        throw UnauthorisedException(response.body.toString());
      case 500:
      default:
        throw FetchDataException('Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }

  }

}


