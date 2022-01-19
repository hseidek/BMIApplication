import 'dart:math';

import 'package:bmi_application/Calculation.dart';
import 'package:bmi_application/ResultScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  @override
  _BmiScreenState createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  double age = 20;
  double weight = 60;
  double height = 120;
  bool isMale = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("BMI Calculator"),
        ),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Container(

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color:
                                  isMale ? Colors.red : Colors.white12),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage("assets/maleicon.png"),
                                width: 90,
                                height: 90,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Male",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            isMale = false;
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: !isMale ? Colors.red : Colors.white38),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image(
                                image: AssetImage("assets/femaleicon.png"),
                                width: 100,
                                height: 100,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Female",
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold,color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Height",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            "${height.round()}",
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.w900,color: Colors.white),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text("cm",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white))
                        ],
                      ),
                      Slider(
                        value: height,
                        activeColor: Colors.redAccent,
                        inactiveColor: Colors.red,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                        min: 80.0,
                        max: 220,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Weight",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                            Text("${weight.round()}",
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold,color: Colors.white)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.white12,
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  heroTag: 'weight-',
                                  child: Icon(Icons.remove,color: Colors.white),
                                  mini: true,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.white12,
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  heroTag: 'weight+',
                                  child: Icon(Icons.add,color: Colors.white),
                                  mini: true,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Age",
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                            ),
                            Text("${age.round()}",
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.bold,color: Colors.white)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(
                                  backgroundColor: Colors.white12,
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  heroTag: 'age-',
                                  child: Icon(Icons.remove),
                                  mini: true,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                FloatingActionButton(
                                  backgroundColor: Colors.white12,
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  heroTag: 'age+',
                                  child: Icon(Icons.add),
                                  mini: true,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.red,
              height: 60,
              width: double.infinity,
              child: MaterialButton(
                onPressed: () {
                  Calculation calc =
                      Calculation(age: age, height: height, weight: weight);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultScreen(
                                resultNumber: calc.getResultNumber().toInt(),
                                textResult: calc.getResultMessage(),
                            adviceMessage: calc.getAdviceMessage(),
                              )));
                },
                child: Text(
                  "Calculate",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ));
  }
}
