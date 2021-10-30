import 'package:flutter/material.dart';
import 'package:bmi_calculator/formula.dart';

class ResultPage extends StatefulWidget {
  int weight;
  int height;
  int age = 30;
  ResultPage({required this.weight, required this.height, age});
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  Logic logic = Logic();
  double bmiResult= 0;
  @override
  void initState() {
    bmiResult = logic.calculateBMI(widget.height, widget.weight);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your BMI: ',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              '${bmiResult.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 70,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}