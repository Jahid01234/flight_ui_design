import 'package:flight_ui_design/Custom_Design/MyClipper.dart';
import 'package:flight_ui_design/Custom_Design/custom_icon.dart';
import 'package:flutter/material.dart';

class HomeScreenTopPart extends StatefulWidget {
  const HomeScreenTopPart({super.key});

  @override
  State<HomeScreenTopPart> createState() => _HomeScreenTopPartState();
}

class _HomeScreenTopPartState extends State<HomeScreenTopPart> {
  int selectedIndex = 0;
  var isFlightSelected = true;
  List<String> menuItem = [
    "Boston (BOS)",
    "New York City (JFK)",
    "Washington"
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: MyClipper(),
          child: Container(
            height: 400.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.orange,
              Colors.deepOrangeAccent,
            ])),
            child: Column(
              children: [
                // Location part
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),

                      // PopUpMenuItem part
                      SizedBox(
                        width: 10,
                      ),
                      PopupMenuButton(
                        child: Row(
                          children: [
                            Text(
                              menuItem[selectedIndex],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: Colors.white,
                            )
                          ],
                        ),
                        itemBuilder: (context) {
                          return menuItem
                              .map((e) => PopupMenuItem<String>(
                                  value: e, child: Text(e)))
                              .toList();
                        },
                        onSelected: (index) {
                          setState(() {
                            selectedIndex = menuItem.indexOf(index
                                .toString()); // Update selectedIndex with integer index
                          });
                        },
                      ),
                      Spacer(), // the space the 1st and last position
                      Icon(
                        Icons.settings,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),

                // 3rd text part
                SizedBox(height: 25),
                Text("Where would\nyou want to go?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.center),

                // 4th search box part
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    child: TextField(
                      controller: TextEditingController(text: menuItem[1]),
                      style: TextStyle(color: Colors.black),
                      cursorColor: Colors.deepOrangeAccent,
                      decoration: InputDecoration(
                          //hintText: "Would you like to?",
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          suffixIcon: Material(
                            elevation: 2,
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Colors.white.withOpacity(0.8),
                            child: Icon(
                              Icons.search,
                              color: Colors.deepOrange,
                            ),
                          )),
                    ),
                  ),
                ),


                // 5th Iconic part
                SizedBox(height: 40),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                       onTap: (){
                         setState(() {
                           isFlightSelected = true;
                         });
                       },
                        child: CustomIcon(icon: Icons.flight_takeoff, text: "Flights", isSelected: isFlightSelected,),
                    ),

                    SizedBox(width: 30,),

                    InkWell(
                      onTap: (){
                        setState(() {
                          isFlightSelected = false;
                        });
                      },
                        child: CustomIcon(icon: Icons.hotel, text: "Hotels",isSelected: !isFlightSelected,),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),

      ],
    );
  }
}
