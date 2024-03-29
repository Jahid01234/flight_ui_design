import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CityCard extends StatefulWidget {
  //const CityCard({super.key});
  final String imagePath, cityName, monthYear, discount, oldPrice, newPrice;

  CityCard({
    required this.imagePath,
    required this.cityName,
    required this.monthYear,
    required this.discount,
    required this.oldPrice,
    required  this.newPrice
  });



  @override
  State<CityCard> createState() => _CityCardState();
}

List<CityCard> cityList=[
  CityCard(imagePath: "assets/images/pic1.jpg", cityName: "America", monthYear: "Ap 2022", discount: " 45%", oldPrice: "4299", newPrice: "3000"),
  CityCard(imagePath: "assets/images/pic2.jpg", cityName: "America", monthYear: "Ap 2022", discount: " 45%", oldPrice: "4299", newPrice: "3000"),
  CityCard(imagePath: "assets/images/pic3.jpg", cityName: "America", monthYear: "Ap 2022", discount: " 45%", oldPrice: "4299", newPrice: "3000"),
  CityCard(imagePath: "assets/images/pic4.jpg", cityName: "America", monthYear: "Ap 2022", discount: " 45%", oldPrice: "4299", newPrice: "3000"),
  CityCard(imagePath: "assets/images/pic1.jpg", cityName: "America", monthYear: "Ap 2022", discount: " 45%", oldPrice: "4299", newPrice: "3000"),
  CityCard(imagePath: "assets/images/pic2.jpg", cityName: "America", monthYear: "Ap 2022", discount: " 45%", oldPrice: "4299", newPrice: "3000"),
  CityCard(imagePath: "assets/images/pic3.jpg", cityName: "America", monthYear: "Ap 2022", discount: " 45%", oldPrice: "4299", newPrice: "3000"),
  CityCard(imagePath: "assets/images/pic4.jpg", cityName: "America", monthYear: "Ap 2022", discount: " 45%", oldPrice: "4299", newPrice: "3000"),
  CityCard(imagePath: "assets/images/pic1.jpg", cityName: "America", monthYear: "Ap 2022", discount: " 45%", oldPrice: "4299", newPrice: "3000"),
  CityCard(imagePath: "assets/images/pic2.jpg", cityName: "America", monthYear: "Ap 2022", discount: " 45%", oldPrice: "4299", newPrice: "3000"),
  CityCard(imagePath: "assets/images/pic3.jpg", cityName: "America", monthYear: "Ap 2022", discount: " 45%", oldPrice: "4299", newPrice: "3000"),
  CityCard(imagePath: "assets/images/pic4.jpg", cityName: "America", monthYear: "Ap 2022", discount: " 45%", oldPrice: "4299", newPrice: "3000"),

];


class _CityCardState extends State<CityCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(0)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Container(
              height: 210, // image actuall size define here
              width: 160,
              child: Image.asset(widget.imagePath, fit: BoxFit.cover,),// for stateful widget ,we use (widget.imagePath) extra add widget
            ),
          ),
        ),

        Positioned(
            top: 150,
            left: 10,
            bottom: 0.0,
            child: Container(
              width: 160,
              height: 100,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black,
                        Colors.black12..withOpacity(0.1)
                      ]
                  )
              ),
            )
        ),
        Positioned(
            top: 150,
            left: 15.0,
            right: 18,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.cityName, style: TextStyle(color: Colors.orangeAccent,fontSize:12,)),
                    Text(widget.monthYear, style: TextStyle(color: Colors.deepOrangeAccent,fontSize: 12,))
                  ],
                ),

                Container(
                  padding: EdgeInsets.symmetric(horizontal: 6,vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                    child: Text("${widget.discount}",style: TextStyle(color: Colors.orangeAccent,fontSize: 13,fontWeight: FontWeight.bold)),
                )

              ],
            )
        )


      ],
    );
  }
}
