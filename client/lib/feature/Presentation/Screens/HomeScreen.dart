import 'package:client/feature/Presentation/widgets/Retext.dart';
import 'package:client/feature/Presentation/widgets/dropdowntext.dart';
import 'package:flutter/material.dart';

import '../widgets/dyanamic_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 10, left: 10),
            child: Container(
              width: double.maxFinite,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ReuseText(
                        text: "Deliver To",
                        size: 16,
                      ),
                      const DropdownListExample(),
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
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Container(
                        height: 200,
                        width: 300,
                        child: DynamicListview(),

                      )
                    ],
                  ),
                  Container(

                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
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
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
