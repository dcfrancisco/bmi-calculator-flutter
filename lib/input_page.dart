import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'constants.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      color: selectedGender == Gender.male
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      color: selectedGender == Gender.female
                          ? kActiveCardColor
                          : kInactiveCardColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                color: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '180',
                          style: kNumberTextStyle,
                        ),
                        Text(
                          'cm',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xFF8D8E98),
                          ),
                        ),
                      ],
                    ),
                    Slider(
                      value: 180.0,
                      min: 120.0,
                      max: 220.0,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {},
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: ReusableCard(
                      color: kActiveCardColor,
                      cardChild: Column(
                        children: [
                          Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            '60',
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: Color(0xFF4C4F5E),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: Color(0xFF4C4F5E),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: new ReusableCard(
                      color: kActiveCardColor,
                      cardChild: Column(
                        children: [
                          Text(
                            'AGE',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color(0xFF8D8E98),
                            ),
                          ),
                          Text(
                            '25',
                            style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: Color(0xFF4C4F5E),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              FloatingActionButton(
                                onPressed: () {},
                                backgroundColor: Color(0xFF4C4F5E),
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: kButtomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kButtomContainerHeight,
            )
          ],
        ));
  }
}
