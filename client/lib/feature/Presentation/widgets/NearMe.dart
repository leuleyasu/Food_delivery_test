import 'package:flutter/material.dart';


class NearMe extends StatefulWidget {
  @override
  _NearMeState createState() => _NearMeState();
}

class _NearMeState extends State<NearMe> {
  final List<int> items = List.generate(10, (index) => index + 1);
  final PageController _pageController = PageController(viewportFraction: 0.8);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          controller: _pageController,
          itemCount: items.length,
          itemBuilder: (context, index) {
            return  Container(
              height: 90,
              width: 100,
      decoration: BoxDecoration(
         color: Colors.blue,
        borderRadius: BorderRadius.circular(10)
      ),
        margin: EdgeInsets.all(10.0),


                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                     child:  Text(
                    items[index].toString(),
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  ),
                      ),
                    const Column(
                      children: [
                        Text("Mamas kitchen"),
                        Text("Mamas kitchen"),
                        Text("Mamas kitchen")

                      ],
                    ),
                      Container(
                         child:  Text(
                    items[index].toString(),
                    style: const TextStyle(fontSize: 24, color: Colors.white),
                  ),
                      )
                    ],
                  )
                )
        );

        }),

    );

  }


  }
