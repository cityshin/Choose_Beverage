import 'package:flutter/material.dart';

class Result extends StatefulWidget{
  State<StatefulWidget> createState() => _Result();
}

class _Result extends State<Result> {
  String? beverage;
  Widget build(BuildContext context) {
    final beverage = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('App bar'),
      ),
      
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('your beverage is'),
              SizedBox(
                height: 30,
              ),
              Text('$beverage', style: const TextStyle(fontSize: 30),),


            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          Navigator.of(context).popUntil((route) => route.isFirst);
        },
      ),
    );
  }
}
