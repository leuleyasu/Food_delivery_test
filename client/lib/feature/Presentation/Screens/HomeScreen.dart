import 'package:client/feature/Data/PrductService.dart';
import 'package:client/feature/Presentation/widgets/NearMe.dart';
import 'package:client/feature/Presentation/widgets/Retext.dart';
import 'package:client/feature/Presentation/widgets/dropdowntext.dart';
import 'package:client/feature/Presentation/widgets/listview.dart';
import 'package:flutter/material.dart';

import '../../Data/Model/ProductModel.dart';
import '../widgets/dyanamic_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 10, right: 10),
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ReuseText(
                        text: "Deliver To,",
                        size: 16,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DropdownListExample(),
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(1, 1),
                            blurRadius: 2,
                          ),
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(-1, -1),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      ReuseText(
                        text: "Good Morning ,",
                        size: 25,
                        color: Colors.green,
                      ),
                      ReuseText(
                        text: "Sol",
                        color: Colors.green,
                        size: 16,
                      ),
                    ],
                  ),
                ),
                Container(height: 150, width: double.maxFinite, child: DynamicListview()),
                Container(
                  height: 100,
                  width: double.maxFinite,
                  child: ListviewStatic(),
                ),
                Row(
                  children: [
                    ReuseText(text: "Break fast | Lunch | Dinner", size: 20)
                  ],
                ),
                Container(
                    height: 100,
                    width: double.maxFinite,
                    child: ListviewStatic()),
                Container(
                    height: double.maxFinite, width: 320, child: NearMe()),
              ],
            ),
          ),
        ),
      ),
    );
  }


}
