import 'package:flutter/material.dart';


class MyPageViewBuilder extends StatefulWidget {
  @override
  _MyPageViewBuilderState createState() => _MyPageViewBuilderState();
}

class _MyPageViewBuilderState extends State<MyPageViewBuilder> {
  final List<int> items = List.generate(10, (index) => index + 1);
  final PageController _pageController = PageController(viewportFraction: 0.8);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
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
                height: Curves.easeInOut.transform(value) * 300,
                child: child,
              ),
            );
          },
          child: Container(
            margin: EdgeInsets.all(10.0),
            color: Colors.blue,
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
