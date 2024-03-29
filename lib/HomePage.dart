import 'package:flight_ui_design/HomeScreenBottomPart.dart';
import 'package:flight_ui_design/HomeScreenTopPart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selected =0;// initally sectected zero index
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:
        [
          HomeScreenTopPart(),
          HomeScreenBottomPart()
        ],

      ),
      bottomNavigationBar: BottomNavigationBar(
         backgroundColor: Colors.deepOrangeAccent.shade200,
         currentIndex: _selected,
         selectedItemColor: Colors.white,
         items: [
           BottomNavigationBarItem(
               icon: Icon(Icons.home,color: Colors.white,),
              label: "Home",
             backgroundColor: Colors.white
           ),

           BottomNavigationBarItem(
               icon: Icon(Icons.person,color: Colors.white,),
               label: "Profile",
               backgroundColor: Colors.white
           ),
           BottomNavigationBarItem(
               icon: Icon(Icons.settings,color: Colors.white,),
               label: "Settings",
               backgroundColor: Colors.cyan
           ),
          ],
        onTap: (index){
           setState(() {
             _selected= index;
           });
        },
      ),
    );
  }
}
