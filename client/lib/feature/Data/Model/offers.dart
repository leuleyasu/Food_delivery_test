// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Offers {
  final String averageReview;
  final String time;
  final String displaytime;
  final String cuisine;
  final String costForTwo;
  final String displayCostForTwo;
  final String totalAmount;
  final String balanceAmount;
  final String status;
  final String image;
  final String openingToTime;
  final String openingFromTime;
  final String outletDescription;
  final String isPureVeg;
  final String area;
  final String type;
  Offers({
    required this.averageReview,
    required this.time,
    required this.displaytime,
    required this.cuisine,
    required this.costForTwo,
    required this.displayCostForTwo,
    required this.totalAmount,
    required this.balanceAmount,
    required this.status,
    required this.image,
    required this.openingToTime,
    required this.openingFromTime,
    required this.outletDescription,
    required this.isPureVeg,
    required this.area,
    required this.type,
  });





  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'averageReview': averageReview,
      'time': time,
      'displaytime': displaytime,
      'cuisine': cuisine,
      'costForTwo': costForTwo,
      'displayCostForTwo': displayCostForTwo,
      'totalAmount': totalAmount,
      'balanceAmount': balanceAmount,
      'status': status,
      'image': image,
      'openingToTime': openingToTime,
      'openingFromTime': openingFromTime,
      'outletDescription': outletDescription,
      'isPureVeg': isPureVeg,
      'area': area,
      'type': type,
    };
  }

  factory Offers.fromMap(Map<String, dynamic> map) {
    return Offers(
      averageReview: map['averageReview'] as String,
      time: map['time'] as String,
      displaytime: map['displaytime'] as String,
      cuisine: map['cuisine'] as String,
      costForTwo: map['costForTwo'] as String,
      displayCostForTwo: map['displayCostForTwo'] as String,
      totalAmount: map['totalAmount'] as String,
      balanceAmount: map['balanceAmount'] as String,
      status: map['status'] as String,
      image: map['image'] as String,
      openingToTime: map['openingToTime'] as String,
      openingFromTime: map['openingFromTime'] as String,
      outletDescription: map['outletDescription'] as String,
      isPureVeg: map['isPureVeg'] as String,
      area: map['area'] as String,
      type: map['type'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Offers.fromJson(String source) => Offers.fromMap(json.decode(source) as Map<String, dynamic>);
}
