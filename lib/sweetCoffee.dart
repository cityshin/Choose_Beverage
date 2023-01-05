import 'package:flutter/material.dart';

class SweetCoffee extends StatefulWidget{
  State<StatefulWidget> createState() => _SweetCoffee();
}

class _SweetCoffee extends State<SweetCoffee> {
  String? beverage;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sweet Coffee'),
      ),

      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Do you want sweet coffee?'),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(onPressed: () {
                    beverage = "mocha latte";
                    Navigator.of(context).pushNamed('R',arguments: beverage);
                    //mocha latte 전달
                  }, child: Text('Yes')),
                  const SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(onPressed: () {
                    beverage = "caffe latte";
                    Navigator.of(context).pushNamed('R',arguments: beverage);
                    //CAFFE LATTE 전달
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
