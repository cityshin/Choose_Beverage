import 'package:flutter/material.dart';

class ChooseBeverage extends StatefulWidget{
  State<StatefulWidget> createState() => _ChooseBeverage();
}

class _ChooseBeverage extends State<ChooseBeverage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Choose Beverage'),
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('음료 선택을 도와드리겠습니다',style: TextStyle(fontSize: 18),),
            const SizedBox(
              height: 30,
            ),
            const Text('Lets start!!', style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed('MYC');

            },

                child: const Text('Go')
            ),

          ],
        ),
      ),
    );
  }
}
