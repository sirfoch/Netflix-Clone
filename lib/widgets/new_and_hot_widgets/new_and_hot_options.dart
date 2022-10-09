import 'package:flutter/material.dart';

import '../textWidget.dart';

class NHOptions extends StatelessWidget {
  final String text;
  final Function? onpressed;
  final BoxDecoration? decoration;
  final Color color;
  const NHOptions({Key? key, required this.text, this.onpressed, this.decoration, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      decoration: decoration,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 12),
          child: Row(
            children: [
              DescriptionText(
                text: text,
                color: color,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
