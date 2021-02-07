import 'package:flutter/material.dart';

class coffee_menu_widget extends StatelessWidget {

  const coffee_menu_widget({
    Key key,
    @required this.width, this.imagePath, this.iconColor, this.coffeeName, this.coffeePrice, this.coffeeDesc,
  }) : super(key: key);

  final double width;
  final String imagePath;
  final Color iconColor;
  final String coffeeName;
  final int coffeePrice;
  final String coffeeDesc;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: width * 0.9,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.blue[50],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: 20,),
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  color: iconColor,
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                    height:20 ,
                    width: 20,
                    child: Image.asset(imagePath, height: 20, fit: BoxFit.fitHeight,)
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text("${coffeeName}", style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600
                    ),),
                  ),
                  Text("${coffeeDesc}", style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w300
                  ),)
                ],
              ),

            ),
            Spacer(),

            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Text("₹ ${coffeePrice}", style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  fontSize: 17
              ),),
            )
          ],
        ),
      ),
    );
  }
}
