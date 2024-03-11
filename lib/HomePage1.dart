import 'package:flutter/material.dart';
import 'package:glass/levels.dart';
import 'package:glass/modules/HomePage2.dart';
import 'package:glass/modules/ProfilePage.dart';
import 'package:glass/modules/favoritPage.dart';

import 'package:glass/pdfview.dart';



class HomePage1 extends StatefulWidget {
  HomePage1({super.key});

  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {

int currentIndex=1;
List<Widget> Screens=[
  FavoraitePage(),
  HomePage2(),
  ProfilePage(),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(

        
        backgroundColor: Colors.white.withOpacity(0.3),
currentIndex: currentIndex,
onTap: (index) {
  setState(() {
    currentIndex=index;
  });
},

        items: [
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "المفضلة"),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "الصفحة الرئيسية"),
        BottomNavigationBarItem(icon: Icon(Icons.person,),label: "حسابك")
      
      
      ],
      ),
      body:Screens[currentIndex] ,
    );
  }
}
