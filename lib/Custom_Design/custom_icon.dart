import 'package:flutter/material.dart';

class CustomIcon  extends StatefulWidget {
  final IconData icon;
  final String text;
  final bool isSelected;
  
   CustomIcon({
     required this.icon,
     required this.text,
     required this.isSelected
   });

  @override
  State<CustomIcon > createState() => _CustomIconState();
}
 

class _CustomIconState extends State<CustomIcon > {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      decoration: widget.isSelected ? BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        borderRadius: BorderRadius.circular(20),
      ):null,
      child: Row(
        children: [
          Icon(
            widget.icon,
            size: 20,
            color: Colors.white,
          ),
          SizedBox(width: 6,),
          Text(
            widget.text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16
            ),
            )

        ],

      ),
    );
  }
}
