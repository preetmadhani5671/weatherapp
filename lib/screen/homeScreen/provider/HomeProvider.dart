import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart'as http;
import 'package:weatherapp/screen/homeScreen/model/DataModel.dart';

class HomeProvider extends ChangeNotifier
{
  String lat = "21.1702";
  String lon = "72.8311";

  Future<DataModel> Apicalling(String lat,String lon)
  async{
    var jsonString = await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=9628b95a2235abb2f18055013ade5de8'));
    var json = jsonDecode(jsonString.body);

    return DataModel.fromJson(json);

  }

  void Changecity(String l1,String l2)
  {
    lat=l1;
    lon=l2;
    notifyListeners();
  }
}