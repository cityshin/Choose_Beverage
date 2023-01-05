import 'package:flutter/material.dart';


class Milk extends StatefulWidget{
  State<StatefulWidget> createState() => _Milk();
}

class _Milk extends State<Milk> {
String? beverage;

  Widget build(BuildContext context) {
    final counts = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Milk'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Since you drank ${counts} ccup of coffee,'),
            const SizedBox(
              height: 30,
            ),
            const Text('You may wnat coffee'),
            const SizedBox(
              height: 30,
            ),
            const Text('Do you want milk in the coffee?', style: TextStyle(fontSize: 20),),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(onPressed: () {
                  Navigator.of(context).pushNamed('SC');

                }, child: const Text('Yes')),
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton(onPressed: () {
                  beverage = "real americano";
                  Navigator.of(context).pushNamed('R',arguments: beverage);
                  //real americano 인자 전달
                }, child: const Text('No'))
              ],
            )

          ],
        ),
      ),
    );
  }
}
