import 'package:flutter/material.dart';

import '../textWidget.dart';

class NHOptions extends StatelessWidget {
  final String text;
  final Function? onpressed;
  const NHOptions({Key? key, required this.text, this.onpressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 25,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(11),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 12),
          child: Row(
            children: [
              DescriptionText(
                text: text,
                color: Colors.black,
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
