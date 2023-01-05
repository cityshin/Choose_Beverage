import 'package:flutter/material.dart';

class CoffeeAgain extends StatefulWidget{
  State<StatefulWidget> createState() => _CoffeeAgain();
}

class _CoffeeAgain extends State<CoffeeAgain> {
  String? beverage;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coffee Again'),
      ),

      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Do you want some more coffee?'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {
                    Navigator.of(context).pushNamed('SC');
                  }, child: Text('Yes')),
                  ElevatedButton(onPressed: () {
                    beverage = "sweet potato latte";
                    Navigator.of(context).pushNamed('R', arguments: beverage);
                    //sweet potato latte 전달
                  }, child: Text('No'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
