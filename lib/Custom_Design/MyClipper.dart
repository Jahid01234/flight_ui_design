import 'package:flutter/cupertino.dart';

class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    final path = new Path();

    path.lineTo(0, 0);// 1st point
    path.lineTo(0, size.height); // 2nd point

    // The start 3rd point
    path.quadraticBezierTo(
        size.width*0.25, size.height-50,
        size.width*0.5, size.height-30
    );

    path.quadraticBezierTo(
        size.width*0.75, size.height-20,
        size.width, size.height-90
    );


    // The End 3rd point

    path.lineTo(size.width, size.height); // 4th point
    path.lineTo(size.width, 0);// 5th point





    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   return false;
  }

}