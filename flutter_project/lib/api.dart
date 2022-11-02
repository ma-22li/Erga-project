import 'dart:convert';
import 'dart:js';
import 'package:group_plus/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:group_plus/response.dart';
import 'package:flutter/scheduler.dart';



/// API class to call all apis here 
class ErqaApi {

Map<String, String> _myHeader = {
    "Content-type":"application/json",
};
///
///Future is a return type saying that we Promise that will return what is between the brackets <here>.
///
Future<ErqaResponse> signIn(String username, String password) async {
  var _url = Uri.parse("http://127.0.0.1:8000/login/");

    var _body = {
      "username": username,
      "password": password,
    };

  http.Response _mReponse = await http.post( // actual request
    _url,
    headers: _myHeader,
    body: jsonEncode(_body), //we encode body before sending to BackEnd.
  );

  print("RESPONSEE>> ${_mReponse.body}"); // just to show full response.

  if ( _mReponse.statusCode == 200 ) 
    print("Signed successfully !");

    var decodedJson = jsonDecode(_mReponse.body); //now we have the JSON response, we must decode it first.
    return ErqaResponse.fromJson(decodedJson);  // convert decodedJson to normal object that can be used in Flutter easily.
  

 }
}






// Sign Up

class ErqaSignUpApi {
  Map<String, String> _myHeader = {
    "Content-type":"application/json",
  };
  ///
  ///Future is a return type saying that we Promise that will return what is between the brackets <here>.
  ///
  Future<ErqaResponse> signUp(String full_name,String email,String password) async {
    var _url = Uri.parse("http://127.0.0.1:8000/signup/");

    var _body = {
      "full_name": full_name,
      "email": email,
      "password": password,
    };

    http.Response _mReponse = await http.post( // actual request
      _url,
      headers: _myHeader,
      body: jsonEncode(_body), //we encode body before sending to BackEnd.
    );

    print("RESPONSE>> ${_mReponse.body}"); // just to show full response.

    var decodedJson2 = jsonDecode(_mReponse.body); //now we have the JSON response, we must decode it first.
    return ErqaResponse.fromJson(decodedJson2);  // convert decodedJson to normal object that can be used in Flutter easily.
  }
}
