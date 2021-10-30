import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/enum_file.dart';
import 'package:bmi_calculator/result_page.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedCard = Gender.male;
  int sliderValue = 150;
  int weight = 56;
  int age = 30;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap:() {
                      setState(() {
                        selectedCard = Gender.male;
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.male, 
                            color: Colors.white,
                            size: 90,
                          ),
                          SizedBox(height: 10),
                          Text('MALE', 
                            style: TextStyle(
                              color: Colors.white, 
                              fontSize: 25
                            )
                          )
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selectedCard ==  Gender.male? Colors.cyan : Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap:() {
                      setState(() {
                        selectedCard = Gender.female;
                      });
                    },
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.female, 
                            color: Colors.white,
                            size: 90,
                          ),
                          SizedBox(height: 10),
                          Text('FEMALE', 
                            style: TextStyle(
                              color: Colors.white, 
                              fontSize: 25
                            )
                          )
                        ],
                      ),
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: selectedCard ==  Gender.female? Colors.cyan : Colors.lightBlueAccent,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // second row
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('HEIGHT', 
                          style: TextStyle(
                              color: Colors.white, 
                              fontSize: 25
                          )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(sliderValue.toString(),
                              style: TextStyle(
                                color: Colors.white, 
                                fontSize: 65,
                                fontWeight: FontWeight.bold,
                              )
                            ),
                            Text('cm',
                              style: TextStyle(
                                color: Colors.white, 
                                fontSize: 21,
                              )
                            ),
                          ],
                        ),
                        Slider(
                          value: sliderValue.toDouble(),
                          min: 120.0,
                          max: 225.0,
                          onChanged: (value) {
                            setState(() {
                              sliderValue = value.toInt();
                            });
                          },
                          inactiveColor: Colors.white,
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // thrid row
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('WEIGHT',
                          style: TextStyle(
                              color: Colors.white, 
                              fontSize: 25
                          )
                        ),
                        Text('$weight',
                          style: TextStyle(
                              color: Colors.white, 
                              fontSize: 61,
                              fontWeight: FontWeight.bold
                          )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  FontAwesomeIcons.plus, 
                                  color: Colors.lightBlue,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  FontAwesomeIcons.minus, 
                                  color: Colors.lightBlue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('AGE',
                          style: TextStyle(
                              color: Colors.white, 
                              fontSize: 25
                          )
                        ),
                        Text('$age',
                          style: TextStyle(
                              color: Colors.white, 
                              fontSize: 61,
                              fontWeight: FontWeight.bold
                          )
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  FontAwesomeIcons.plus, 
                                  color: Colors.lightBlue,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  FontAwesomeIcons.minus, 
                                  color: Colors.lightBlue,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(
                    height: sliderValue, 
                    weight: weight, 
                    age: age,
                  )
                ),
              );
            },
            child: Container(
              color: Colors.blue,
              height: 70,
              width: double.infinity,
              child: Center(
                child: Text('CALCULATE',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                    )
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
