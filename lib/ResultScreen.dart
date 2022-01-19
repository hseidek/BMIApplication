import 'package:bmi_application/BmiScreen.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  int resultNumber;
  String textResult;
  String adviceMessage;

  ResultScreen({required this.resultNumber, required this.textResult,required this.adviceMessage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "BMI Result",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Your Result".toUpperCase(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 40),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                color: Colors.white12,
                width: 400,
                height: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      textResult.toUpperCase(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.lightGreen,
                          fontSize: 30),
                    ),
                    Text(
                      resultNumber.toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 50),
                    ),
                    Text(
                      adviceMessage.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 30),
                    )
                  ],
                ),
              ),
              Container(
                  color: Colors.red,
                  width: double.infinity,
                  height: 70,
                  child: MaterialButton(
                    child: Text(
                      "Recalculate".toUpperCase(),
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                    onPressed: () =>
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => BmiScreen())),
                  ))
            ],
          )),
    );
  }
}
