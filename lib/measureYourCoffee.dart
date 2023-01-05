import 'package:flutter/material.dart';


class MeasureYourCoffee extends StatefulWidget{
  State<StatefulWidget> createState() => _MeasureYourCoffee();
}

class _MeasureYourCoffee extends State<MeasureYourCoffee> {
  int count =0;

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Measure Your Coffee'),
      ),

      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('How many cups of coffee did you drink?'),
              const SizedBox(
                height: 30,
              ),
              Text('$count Cups'),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(onPressed:() {
                    setState(() {
                      count++;
                    });
                  },
                      child: Text('+')),
                  const SizedBox(
                    width: 30,
                  ),
                  ElevatedButton(onPressed: () {
                    setState(() {
                      count--;
                    });
                  },
                      child: Text('-'))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(onPressed: () {
                if(count>1) {
                  Navigator.of(context).pushNamed('JOL',arguments: count);
                } else {
                  Navigator.of(context).pushNamed('M',arguments: count);
                }
              },
                  child: Text('Next'))
            ],
          ),
        ),
      ),
    );
  }
}
