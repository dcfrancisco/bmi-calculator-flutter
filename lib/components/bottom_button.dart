import 'package:flutter/material.dart';
import '../commons/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap as void Function()?,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kButtomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kButtomContainerHeight,
      ),
    );
  }
}
