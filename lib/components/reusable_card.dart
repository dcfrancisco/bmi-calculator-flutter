import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.color, required this.cardChild, this.onPress});

  final Color color;
  final Widget cardChild;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          onPress?.call();
        },
        child: Container(
          child: cardChild,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      );
}
