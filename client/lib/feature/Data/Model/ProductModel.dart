// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'outlets.dart';

class Banners {
final String bannerid;
final String bannerImage;
final String dishid;
final String outletid;
final Outlets outlets;


  Banners({
    required this.bannerid,
    required this.bannerImage,
    required this.dishid,
    required this.outletid,
    required this.outlets,
  });



  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bannerid': bannerid,
      'bannerImage': bannerImage,
      'dishid': dishid,
      'outletid': outletid,
      'outlets': outlets.toMap(),
    };
  }

  factory Banners.fromMap(Map<String, dynamic> map) {
    return Banners(
      bannerid: map['bannerid'] as String,
      bannerImage: map['bannerImage'] as String,
      dishid: map['dishid'] as String,
      outletid: map['outletid'] as String,
      outlets: Outlets.fromMap(map['outlets'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Banners.fromJson(String source) => Banners.fromMap(json.decode(source) as Map<String, dynamic>);
}
