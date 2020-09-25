//import 'package:http/http.dart';
//library api;
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http_auth/http_auth.dart' as http_auth;
import 'package:playground/config.dart';


class BaseService {
  //Send money
  Future test(String token) async {
    Map<String, String> headers = {
      "Content-type": "application/json",
      "Authorization": "Bearer $token"
    };

    final response = await http.post(
        '${Config.domain}api/web/v1/transactions/create',
        
        headers: headers,);

    return response.body;

  }

  Future getTodos() async {
    Map<String, String> headers = {
      "Content-type": "application/json",
    };
    final response = await http.get(
        '${Config.domain}jerry/gcityServer/app/surburbs',
        headers: headers);

    return response.body;
  }
  
  

}