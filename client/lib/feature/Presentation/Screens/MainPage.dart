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
      backgroundColor: Colors.black54,
      body: pages[currentindex],
      bottomNavigationBar:Container(
      color: Colors.black,
    child:  BottomNavigationBar(
        unselectedFontSize: 0,
        backgroundColor: Colors.black54,
        selectedFontSize: 0,
        currentIndex: currentindex,
        onTap: onTap,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showUnselectedLabels: false,
        showSelectedLabels: false,
        elevation: 0,
        items:const [
          BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home_outlined))
       ,   BottomNavigationBarItem(label: "Search",icon: Icon(Icons.search_outlined))

       ,   BottomNavigationBarItem(label: "cat",icon: Icon(Icons.shopping_cart_outlined))
       ,   BottomNavigationBarItem(label: "User",icon: Icon(Icons.person_outline))



        ]

       ) ) ,
    );
  }
}