import 'package:flutter/material.dart';

import 'Widget/coffee_menu_widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  Center(
                    child: Text('Coffee Coder', style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 20
                    ),),
                  ),
                SizedBox(height: 30),
                coffee_menu_widget(
                  width: width,
                  iconColor: Colors.yellow,
                  imagePath: 'images/coffee_bean.png',
                  coffeeDesc: "Pure coffee extract \nto write better code",
                  coffeeName: "Espresso",
                  coffeePrice: 100,
                ),

                coffee_menu_widget(
                  width: width,
                  iconColor: Colors.blue[100],
                  imagePath: 'images/large_cup.png',
                  coffeeDesc: "A normal blend of coffee \nto give a boast of energy",
                  coffeeName: "Cappuccino",
                  coffeePrice: 150,
                ),
                coffee_menu_widget(
                  width: width,
                  iconColor: Colors.green[100],
                  imagePath: 'images/large_cup.png',
                  coffeeDesc: "The added choco chip \nto decorate the code",
                  coffeeName: "Java Chip",
                  coffeePrice: 200,
                ),
                coffee_menu_widget(
                  width: width,
                  iconColor: Colors.red[100],
                  imagePath: 'images/latte_art.png',
                  coffeeDesc: "The swrilling Coffee \nto your UI Expert",
                  coffeeName: "latte",
                  coffeePrice: 250,
                ),
                coffee_menu_widget(
                  width: width,
                  iconColor: Colors.red[100],
                  imagePath: 'images/take_away_cup.png',
                  coffeeDesc: "Stuck on code, Debug \nat home, Coffee on go",
                  coffeeName: "Take Away",
                  coffeePrice: 300,
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

