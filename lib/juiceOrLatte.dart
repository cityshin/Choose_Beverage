import 'package:flutter/material.dart';

class JuiceOrLatte extends StatefulWidget{
  State<StatefulWidget> createState() => _JuiceOrLatte();
}

class _JuiceOrLatte extends State<JuiceOrLatte> {
  String? beverage;
  Widget build(BuildContext context) {
    final counts = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Juice or Latte'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Since you drank ${counts} cups of coffee,'),
            const SizedBox(
              height: 30,
            ),
            const Text('you may not want coffee.'),
            const SizedBox(
              height: 30,
            ),
            const Text('Do you want juice or latte?'),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {
                  beverage = "grape juice";
                  Navigator.of(context).pushNamed('R',arguments: beverage);
                  //grape juice 전달
                }, child: const Text('juice')),
                const SizedBox(
                  width: 30,
                ),
                ElevatedButton(onPressed: () {
                  Navigator.of(context).pushNamed('CA');
                }, child: Text('latte'))
              ],
            )
          ],
        ),
      ),
    );
  }
}
