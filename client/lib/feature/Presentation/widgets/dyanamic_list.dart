
import 'package:client/feature/Data/Model/ProductModel.dart';
import 'package:flutter/material.dart';

import '../../Data/PrductService.dart';


class DynamicListview extends StatefulWidget {
  @override
  _DynamicListviewState createState() => _DynamicListviewState();
}

class _DynamicListviewState extends State<DynamicListview> {
  final List<int> items = List.generate(10, (index) => index + 1);
  List<Banners>banners=[];
  final PageController _pageController = PageController(viewportFraction: 0.8);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
@override
  void initState() {
  featchbaners();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(

 child: PageView.builder(
          scrollDirection: Axis.horizontal,
          controller: _pageController,
          itemCount:banners.length,
          itemBuilder: (context, index) {
            final  banner=banners[index];
            final image=banner.bannerImage;


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
                 child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(image))
                  ),
                 ),
                ),
              ),
            );
          },
        ),




    );


  }
  Future <void> featchbaners() async{
  final response =await DataService.featchdata();
  setState(() {
    banners=response;
  });


}
}