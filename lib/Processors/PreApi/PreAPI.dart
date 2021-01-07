import 'dart:io';

import 'package:http/http.dart' as http;
import 'dart:convert';
import 'Exception.dart';

import 'package:http/io_client.dart';

class PreAPI {
  static HttpClient apiClient;

  final String _baseUrl = 'https://localhost:44308/';

//call this before calling api
  static void initClient(){
    //create new http client
    apiClient = new HttpClient();

    //allow bad api call (aka: pass through certificate)
    apiClient.badCertificateCallback = ((X509Certificate cer, String host, int port) => true);


    
  }

  Future<dynamic> get(String url) async{
    var responseJson;

    try{
      final response = await http.get(_baseUrl + url) ;

      responseJson = _returnResponse(response) ;
    } on SocketException {
      throw FetchDataException('No Internet connection') ;
    }
    return responseJson;
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


