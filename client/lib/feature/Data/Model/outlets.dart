// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'offers.dart';

class Outlets {
final String outletid;
final String restaurantsid;
final String outletName;
final String isServicable;
final Offers offers;
  Outlets({
    required this.outletid,
    required this.restaurantsid,
    required this.outletName,
    required this.isServicable,
    required this.offers,
  });


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outletid': outletid,
      'restaurantsid': restaurantsid,
      'outletName': outletName,
      'isServicable': isServicable,
      'offers': offers.toMap(),
    };
  }

  factory Outlets.fromMap(Map<String, dynamic> map) {
    return Outlets(
      outletid: map['outletid'] as String,
      restaurantsid: map['restaurantsid'] as String,
      outletName: map['outletName'] as String,
      isServicable: map['isServicable'] as String,
      offers: Offers.fromMap(map['offers'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Outlets.fromJson(String source) => Outlets.fromMap(json.decode(source) as Map<String, dynamic>);
}
