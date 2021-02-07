import 'package:coffeecoders/home_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(CoffeeCoders());
}

class CoffeeCoders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
