import 'package:flutter/material.dart';
import 'package:route_example/chooseBeverage.dart';
import 'package:route_example/coffeeAgain.dart';
import 'package:route_example/juiceOrLatte.dart';
import 'package:route_example/measureYourCoffee.dart';
import 'package:route_example/milk.dart';
import 'package:route_example/result.dart';
import 'package:route_example/sweetCoffee.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      initialRoute: 'CB',
      routes: {
        'CB' : (context) => ChooseBeverage(),
        'MYC' : (context) => MeasureYourCoffee(),
        'M' : (context) => Milk(),
        'SC' : (context) => SweetCoffee(),
        'JOL' : (context) => JuiceOrLatte(),
        'CA' : (context) => CoffeeAgain(),
        'R' : (context) => Result()
      },
    );
  }
}

