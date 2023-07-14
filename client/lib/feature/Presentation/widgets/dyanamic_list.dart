import 'package:flutter/material.dart';


class DynamicListview extends StatefulWidget {
  @override
  _DynamicListviewState createState() => _DynamicListviewState();
}

class _DynamicListviewState extends State<DynamicListview> {
  final List<int> items = List.generate(10, (index) => index + 1);
  final PageController _pageController = PageController(viewportFraction: 0.8);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      controller: _pageController,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return AnimatedBuilder(
          animation: _pageController,
          builder: (context, child) {
            double scaleFactor = 0.8;
            double value = 1.0;
            if (_pageController.position.haveDimensions) {
              value = (_pageController.page! - index);
              value = (1 - (value.abs() * scaleFactor)).clamp(0.0, 1.0);
            }
            return Center(
              child: SizedBox(
                width: Curves.easeInOut.transform(value) * 300,
                height: Curves.easeInOut.transform(value) * 160,
                child: child,
              ),
            );
          },
          child: Container(
decoration: BoxDecoration(
   color: Colors.blue,
  borderRadius: BorderRadius.circular(10)
),
  margin: EdgeInsets.all(10.0),


            child: Center(
              child: Text(
                items[index].toString(),
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
        );
      },
    );
  }
}
