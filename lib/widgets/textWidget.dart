import 'package:flutter/material.dart';


class HeavyText extends StatelessWidget {
  const HeavyText({Key? key, required this.text}) : super(key: key);
final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.bold,
      color: Colors.white
    ),);
  }
}

class SmallText extends StatelessWidget {
  const SmallText({Key? key, required this.text}) : super(key: key);
final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      fontSize: 14,
      color: Colors.white
    ),);
  }
}

class DescriptionText extends StatelessWidget {
  const DescriptionText({Key? key, required this.text, this.letterSpacing, this.color, this.fontWeight, this.fontSize}) : super(key: key);
final String text;
final double? letterSpacing;
final Color? color;
final FontWeight? fontWeight;
final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(
      fontSize: 12,
      color: color,
      letterSpacing: letterSpacing,
      fontWeight: fontWeight,
    ),);
  }
}


