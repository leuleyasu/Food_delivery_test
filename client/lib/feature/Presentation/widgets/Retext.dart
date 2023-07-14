// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ReuseText extends StatelessWidget {
   ReuseText({
    Key? key,
    required this.text,
     this.color=Colors.black54,
     this.size=16
  }) : super(key: key);
final String text;
final Color color;
int size;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        // fontWeight: FontWeight.bold
      ),
    );
  }
}
