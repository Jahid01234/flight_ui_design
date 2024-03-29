import 'package:flight_ui_design/Custom_Design/custom_cityCard.dart';
import 'package:flutter/material.dart';

class HomeScreenBottomPart extends StatefulWidget {
  const HomeScreenBottomPart({super.key});

  @override
  State<HomeScreenBottomPart> createState() => _HomeScreenBottomPartState();
}

class _HomeScreenBottomPartState extends State<HomeScreenBottomPart> {
  @override
  Widget build(BuildContext context) {
    return Column(

        children: [

          // The Text Part
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:10,vertical: 5),
            child: Row(
              children: [
                Text("Currently Watched Items",style: TextStyle(color: Colors.deepOrange.shade300,fontWeight: FontWeight.bold),),
                Spacer(), // use the space between two text
                Text("View All(12) ",style: TextStyle(color: Colors.teal),),
              ],
            ),
          ),


          // The city Part
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
            child: Container(
              height: 194, // whole image are contain its container and scrolling
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: cityList


              ),
            ),
          ),

        ],
      );
  }
}
