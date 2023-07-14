import 'package:client/feature/Presentation/Screens/CategoriesPage.dart';
import 'package:flutter/material.dart';

import 'HomeScreen.dart';
import 'UserPage.dart';

class MainPage extends StatefulWidget {

  MainPage({super.key});


  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

   List pages =[
 const HomeScreen(),
const CategoriesPage(),
const UserPage(),
const CategoriesPage(),
];
int currentindex=0;
void onTap(int index){
  setState(() {
    currentindex=index;
  });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentindex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.black54, // Set the desired background color
        ),

          child:  BottomAppBar(
            shape: CircularNotchedRectangle(),
            child: Container(
                decoration: BoxDecoration(
borderRadius: BorderRadius.circular(10)),

              child: BottomNavigationBar(

              unselectedFontSize: 0,

              selectedFontSize: 0,
              currentIndex: currentindex,
              onTap: onTap,
              selectedItemColor: Colors.amber,
              unselectedItemColor: Colors.grey.withOpacity(0.5),
              showUnselectedLabels: false,
              showSelectedLabels: false,
              elevation: 5,
              items:const [

                BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home_outlined))
                     ,   BottomNavigationBarItem(label: "Search",icon: Icon(Icons.search_outlined))

                     ,   BottomNavigationBarItem(label: "cat",icon: Icon(Icons.shopping_cart_outlined))
                     ,   BottomNavigationBarItem(label: "User",icon: Icon(Icons.person_outline))



              ]

                     ),

          ) ),

    ));
  }
}