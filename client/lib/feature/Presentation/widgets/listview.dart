import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView.builder")),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return   Container(
        margin: EdgeInsets.only(right: 15,top: 10),
        width: 200,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
          ,
          color: Colors.white,
          image: const DecorationImage(image: AssetImage("asssets/img")
          ,fit: BoxFit.cover
          )
        ),
    );
          }),
    );
  }
}
