import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ContentPage extends StatelessWidget {
  ContentPage(
      {@required this.interPretation,
      @required this.bmiResult,
      @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interPretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RESULTS"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              padding: EdgeInsets.all(15),
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Expanded(
                    child: CircleAvatar(
                      maxRadius: 50,
                      backgroundImage: NetworkImage(
                          "https://pmcdeadline2.files.wordpress.com/2019/10/shutterstock_editorial_10434333bm.jpg?crop=0px%2C0px%2C2903px%2C1627px&resize=681%2C383"),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Expanded(
                      child: Text(
                    resultText.toUpperCase(),
                    style: kLabelTextStyle.copyWith(
                        color: Colors.lightGreenAccent),
                  )),
                  Expanded(
                      child: Text(
                    bmiResult,
                    style: kNumberTextStyle.copyWith(fontSize: 70),
                  )),
                  Expanded(
                      child: Text(
                    interPretation,
                    textAlign: TextAlign.center,
                    style: kLabelTextStyle.copyWith(fontSize: 23),
                  )),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: ReusableCard(
                onPress: () {
                  Navigator.pushNamed(context, '/');
                },
                colour: Colors.pink,
                cardChild: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "RE-CALCULATE",
                      style: kNumberTextStyle.copyWith(fontSize: 25),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
