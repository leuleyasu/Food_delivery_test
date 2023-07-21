import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;
import 'package:http/http.dart';

import 'Model/ProductModel.dart';
class DataService{


 static Future<List<Banners>> featchdata() async{
    const url ="https://staging.tikusdelivery.com/api/guest/listRestaurant";

final uri= Uri.parse(url);
final Response response = await http.post(uri);
final body=response.body;
final json=jsonDecode(body);
List <dynamic> results=json['banners'];
final products=results.map((e){
return Banners.fromMap(e);

}).toList();
return products;

  }
}